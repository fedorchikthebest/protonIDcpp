#include<string>
#include"include/data/tables.h"


namespace db{
    int db_init(std::string db_name, sqlite3 *db_out);
}