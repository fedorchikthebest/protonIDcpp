#include<string>
#include<sqlite3.h>

class User{
    public:
        int id;
        std::string login;
        std::string name;
        std::string sure_name;
        std::string second_name;
        int class_num;
        std::string class_liter;
        int creation_year;
        std::string hashed_password;
        bool is_teacher;

        int get(int id);
        void create_table(sqlite3 *db);
        void add_row(sqlite3 *db);
        void delete_row(sqlite3 *db);
};