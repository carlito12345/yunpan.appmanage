package com.yunpan.appmanage.db;

import c4.d;
import java.util.List;

/* loaded from: classes.dex */
public interface FileInfoDao {
    int delete(FileInfo fileInfo);

    void delete(String str);

    void deleteAll();

    void deleteDir(String str);

    void deleteFromDirFile(String str);

    void deleteNoExist();

    List<FileInfo> getAllKeyLogDirs(boolean z);

    List<FileInfo> getAllLogFiles();

    int getCount();

    List<FileInfo> getCurrentDirPaths(String str);

    int getDirCount();

    long getDirDirCount(String str);

    long getDirFileCount(String str);

    List<FileInfo> getDirFiles(String str);

    List<FileInfo> getDirFiles_noHide_sortName(String str, boolean z);

    List<FileInfo> getDirFiles_noHide_sortTime(String str, boolean z);

    List<FileInfo> getDirFiles_sortName(String str, boolean z);

    List<FileInfo> getDirFiles_sortTime(String str, boolean z);

    long getDirSize(String str);

    int getFileCount();

    FileInfo getFileInfo(String str);

    long insert(FileInfo fileInfo);

    List<FileInfo> sqlQuery(d dVar);

    int updateAllIsDelete();

    void updateIsExist(String str);

    int updateNameAndPath(String str, String str2, String str3);

    int updatePathsRecursively(String str, String str2);
}
