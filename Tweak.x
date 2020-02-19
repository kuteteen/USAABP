#import <sqlite3.h>

%ctor{
	sqlite3 *configdb;
    NSString *db = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent: @"Preferences/ClientConfigurationManager.sqlite"];
    NSFileManager *fm = [NSFileManager defaultManager];
    if([fm fileExistsAtPath:db]){
        if(sqlite3_open([db UTF8String], &configdb) == SQLITE_OK){
            sqlite3_exec(configdb, "DELETE FROM ZPROPERTY WHERE zName='jbact'", NULL, NULL, NULL);
            sqlite3_close(configdb);
        }
    }
}