#include"db_init.h"

int db::db_init(char *db_name, sqlite3 *db_out){

    int exit = 0;
    exit = sqlite3_open(db_name, &db_out);

    

    if (exit != SQLITE_OK){
        return -1;
    }
    
}