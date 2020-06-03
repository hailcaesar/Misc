#include <mutex>
using namespace std;
std::mutex m;

const unsigned int GOLD_LIMIT = 1000;

class Lock{
    public:
        Lock(){}
        ~Lock(){}
        void Acquire(){}
        void Release(){}
};

class Avatar{
    public:
        Avatar(unsigned int id) : m_uniqueAvatarId{id} {}
        ~Avatar() {};

        /* AddGold and RemoveGold functions need to hold lock because they can be called independently from
         * Transfer().  Works because locks are re-entrant
         */
        void AddGold(unsigned int gold){
            m_lock.Acquire();
            m_gold += gold;
            m_lock.Release();
        }

        void RemoveGold(unsigned int gold){
            m_lock.Acquire();
            m_gold -= gold;
            m_lock.Release();
        }

        /* Handles the deadlock situation where AvatarA is waiting on AvatarB's lock, and AvatarB is waiting on AvatarA's lock
         * This can happen if both avatar send each other gold.  AvatarId is used to determine which Avatar locks first
         */
        static bool Transfer(Avatar& from, Avatar& to, unsigned int gold){
            bool ans = false;
            if(from.m_uniqueAvatarId == to.m_uniqueAvatarId)
                return ans;

            Lock* first;
            Lock* second;
            if(from.m_uniqueAvatarId < to.m_uniqueAvatarId){
                first = &from.m_lock;
                second = &to.m_lock;
            }
            else{
                first = &to.m_lock;
                second = &from.m_lock;
            }

            first->Acquire();
            second->Acquire();

            if(to.m_gold + gold < GOLD_LIMIT && from.m_gold >= gold){
                from.RemoveGold(gold);
                to.AddGold(gold);
                ans = true;
            }

            second->Release();  //Release in reverse order
            first->Release();
            return ans;
        }


        /* Does not handle deadlock situation described above */
        static bool TransferTmp(Avatar& from, Avatar& to, unsigned int gold){
            bool ans = false;
            if(from.m_uniqueAvatarId == to.m_uniqueAvatarId)
                return ans;

            from.m_lock.Acquire();
            if(from.m_gold < gold){
                from.m_lock.Release();
                return ans;
            }

            to.m_lock.Acquire();

            if(to.m_gold + gold < GOLD_LIMIT){
                from.RemoveGold(gold);
                to.AddGold(gold);
                ans = true;
            }

            to.m_lock.Release();
            from.m_lock.Release();
            return ans;

        }

    private:
        const unsigned int m_uniqueAvatarId;
        unsigned int m_gold;
        Lock m_lock;
};


