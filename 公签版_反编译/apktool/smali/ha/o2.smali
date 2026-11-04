.class public final Lha/o2;
.super Lha/a4;
.source "SourceFile"


# static fields
.field public static final synthetic z:I


# instance fields
.field public g:I

.field public h:Lcom/yunpan/appmanage/db/AppBean;

.field public i:Landroid/content/pm/ApplicationInfo;

.field public j:Landroid/content/pm/PackageInfo;

.field public k:Lcom/yunpan/appmanage/bean/SignatureBean;

.field public l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public m:Lx9/t;

.field public final n:I

.field public final p:Ll5/y;

.field public q:D

.field public r:Z

.field public final s:Ljava/util/HashSet;

.field public t:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lda/g;Lda/g;ILl5/y;)V
    .locals 1

    .line 1
    const v0, 0x7f0e008d

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lha/o2;->k:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lha/o2;->r:Z

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lha/o2;->s:Ljava/util/HashSet;

    .line 19
    .line 20
    iput p3, p0, Lha/o2;->n:I

    .line 21
    .line 22
    iput-object p4, p0, Lha/o2;->p:Ll5/y;

    .line 23
    .line 24
    const-string p2, "android"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string p2, "com.android.documentsui"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    const-string p2, "com.android.systemui"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const-string p2, "com.android.shell"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    const-string p2, "com.android.bluetooth"

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    const-string p2, "com.android.packageinstaller"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    const-string p2, "com.android.externalstorage"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static h(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/util/zip/ZipEntry;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 12
    .line 13
    .line 14
    const/high16 p0, 0x300000

    .line 15
    .line 16
    new-array p0, p0, [B

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-ltz p1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, p0, v1, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static i(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    .line 10
    aget-object v3, p0, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    new-instance v4, Ljava/util/zip/ZipEntry;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v6, "/"

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 56
    .line 57
    .line 58
    invoke-static {v3, p1, p2}, Lha/o2;->i(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    new-instance v4, Ljava/io/FileInputStream;

    .line 66
    .line 67
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Ljava/util/zip/ZipEntry;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v5, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 91
    .line 92
    .line 93
    const/high16 v3, 0x300000

    .line 94
    .line 95
    new-array v3, v3, [B

    .line 96
    .line 97
    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-ltz v5, :cond_1

    .line 102
    .line 103
    invoke-virtual {p2, v3, v1, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 111
    .line 112
    .line 113
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    iget-object v1, p0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 8
    .line 9
    xor-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    new-instance v3, Lha/g2;

    .line 12
    .line 13
    const/16 v4, 0x9

    .line 14
    .line 15
    invoke-direct {v3, p0, v4}, Lha/g2;-><init>(Lha/o2;I)V

    .line 16
    .line 17
    .line 18
    iput-object v3, v0, La2/w0;->c:Ljava/lang/Object;

    .line 19
    .line 20
    sget-object v3, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance v4, Lfa/s;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, v0, v2, v1, v5}, Lfa/s;-><init>(La2/w0;Ljava/lang/String;ZI)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final b(I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 3
    .line 4
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 15
    .line 16
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string p1, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b58\u50a8\u8bbe\u5907(sd\u5361\u3001U\u76d8)"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lha/o2;->m:Lx9/t;

    .line 33
    .line 34
    new-instance v2, Lx9/l3;

    .line 35
    .line 36
    const v3, 0x7f08021e

    .line 37
    .line 38
    .line 39
    const-string v4, "\u7a0d\u7b49"

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-wide v1, p0, Lha/o2;->q:D

    .line 48
    .line 49
    const-wide v3, 0x41b2c00000000000L    # 3.145728E8

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    cmpg-double v5, v1, v3

    .line 55
    .line 56
    if-gez v5, :cond_1

    .line 57
    .line 58
    const-string v1, "\u63d0\u53d6\u4e2d\uff0c\u8bf7\u7a0d\u7b49\u7247\u523b"

    .line 59
    .line 60
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-wide v3, 0x41c5e00000000000L    # 7.340032E8

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmpl-double v5, v1, v3

    .line 70
    .line 71
    if-lez v5, :cond_2

    .line 72
    .line 73
    const-string v1, "\u63d0\u53d6\u4e2d\uff0c\u6587\u4ef6\u8f83\u5927\uff0c\u9700\u7a0d\u7b49\u7247\u523b"

    .line 74
    .line 75
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "\u63d0\u53d6\u4e2d\uff0c\u6587\u4ef6\u8d85\u5927\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85"

    .line 80
    .line 81
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    new-instance v1, Lha/g2;

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-direct {v1, p0, v2}, Lha/g2;-><init>(Lha/o2;I)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Lmc/c;

    .line 91
    .line 92
    invoke-direct {v2, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-instance v2, Lha/n2;

    .line 110
    .line 111
    invoke-direct {v2, p0, p1, v0}, Lha/n2;-><init>(Lha/o2;II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "com.android.documentsui"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "\u8fd9\u4e2a\u7cfb\u7edf\u5e94\u7528\u6781\u5176\u91cd\u8981\uff0c\u6211\u62d2\u7edd\u4f60\u8fd9\u4e48\u505a"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 29
    .line 30
    iget-object v1, p0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 31
    .line 32
    iget-object v2, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 33
    .line 34
    iget-boolean v1, v1, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 35
    .line 36
    xor-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    new-instance v3, Lha/g2;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, p0, v4}, Lha/g2;-><init>(Lha/o2;I)V

    .line 42
    .line 43
    .line 44
    iput-object v3, v0, La2/w0;->c:Ljava/lang/Object;

    .line 45
    .line 46
    sget-object v3, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    new-instance v4, Lfa/s;

    .line 49
    .line 50
    const/4 v5, 0x3

    .line 51
    invoke-direct {v4, v0, v2, v1, v5}, Lfa/s;-><init>(La2/w0;Ljava/lang/String;ZI)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final d()V
    .locals 12

    .line 1
    const-string v0, "package:"

    .line 2
    .line 3
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, La2/w0;->O()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "/data/app/"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 18
    .line 19
    iget-boolean v4, v1, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 36
    .line 37
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->u:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-le v0, v1, :cond_1

    .line 47
    .line 48
    new-instance v0, Lha/z6;

    .line 49
    .line 50
    new-instance v11, Lha/i2;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    invoke-direct {v11, p0, v1}, Lha/i2;-><init>(Lha/o2;I)V

    .line 54
    .line 55
    .line 56
    iget-object v5, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 57
    .line 58
    iget-object v6, p0, Lha/a4;->b:Landroid/content/Context;

    .line 59
    .line 60
    const-string v9, "\u53ea\u5378\u8f7d\u5f53\u524d\u7528\u6237"

    .line 61
    .line 62
    const-string v10, "\u5168\u90e8\u5378\u8f7d"

    .line 63
    .line 64
    const-string v7, "\u60a8\u7cfb\u7edf\u4e2d\u6709\u591a\u4e2a\u7528\u6237\uff0c\u8bf7\u95ee\u662f\u5426\u628a\u7cfb\u7edf\u4e2d\u5176\u5b83\u7528\u6237\u91cc\u7684\u540c\u6b3e\u5e94\u7528\u4e5f\u4e00\u540c\u5378\u8f7d\uff1f"

    .line 65
    .line 66
    const-string v8, ""

    .line 67
    .line 68
    move-object v4, v0

    .line 69
    invoke-direct/range {v4 .. v11}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0, v3}, Lha/o2;->f(Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    :goto_0
    iget-object v1, p0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 81
    .line 82
    iget-boolean v4, v1, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 83
    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const-string v0, "\u6ca1\u6709\u6743\u9650\u5378\u8f7d\u7cfb\u7edf\u5e94\u7528\uff01"

    .line 96
    .line 97
    invoke-static {v0, v3}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    :goto_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 102
    .line 103
    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    .line 104
    .line 105
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const/high16 v0, 0x10000000

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_0
    const-string v0, "\u8c03\u7528\u5378\u8f7d\u7a0b\u5e8f\u51fa\u9519\uff01"

    .line 143
    .line 144
    invoke-static {v0, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 145
    .line 146
    .line 147
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    .line 149
    .line 150
    :goto_3
    return-void
.end method

.method public final e(ILcom/yunpan/appmanage/db/AppBean;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lha/a4;->show()V

    .line 7
    .line 8
    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    iput v4, v0, Lha/o2;->g:I

    .line 12
    .line 13
    iput-object v1, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 14
    .line 15
    iget-object v4, v0, Lha/o2;->t:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lha/o2;->v:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v4, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v6, "file://"

    .line 40
    .line 41
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 45
    .line 46
    iget-object v6, v6, Lcom/yunpan/appmanage/util/w;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v6, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 52
    .line 53
    iget-object v6, v6, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v6, ".png"

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    new-instance v5, Lo5/x;

    .line 72
    .line 73
    const/16 v6, 0x8

    .line 74
    .line 75
    invoke-direct {v5, v6}, Lo5/x;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v5}, Lw5/e;->z(Lo5/x;)Lw5/e;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/m;->A(Lw5/a;)Lcom/bumptech/glide/m;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 87
    .line 88
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 89
    .line 90
    iget v6, v5, Lcom/yunpan/appmanage/util/k;->R:I

    .line 91
    .line 92
    invoke-virtual {v4, v6, v6}, Lw5/a;->o(II)Lw5/a;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lcom/bumptech/glide/m;

    .line 97
    .line 98
    const v6, 0x7f080239

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v6}, Lw5/a;->g(I)Lw5/a;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lcom/bumptech/glide/m;

    .line 106
    .line 107
    iget-object v6, v0, Lha/o2;->w:Landroid/widget/ImageView;

    .line 108
    .line 109
    invoke-virtual {v4, v6}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 110
    .line 111
    .line 112
    new-instance v4, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    iget v6, v0, Lha/o2;->n:I

    .line 118
    .line 119
    const-string v7, "\u6743\u9650"

    .line 120
    .line 121
    const/16 v9, 0x17

    .line 122
    .line 123
    const-string v10, "\u91cd\u7f6e"

    .line 124
    .line 125
    const v11, 0x7f080230

    .line 126
    .line 127
    .line 128
    const-string v12, "\u7f13\u5b58"

    .line 129
    .line 130
    const v13, 0x7f08022e

    .line 131
    .line 132
    .line 133
    const-string v14, "\u63d0\u53d6"

    .line 134
    .line 135
    const-string v15, "\u5378\u8f7d"

    .line 136
    .line 137
    const v2, 0x7f08021e

    .line 138
    .line 139
    .line 140
    const v8, 0x7f08024a

    .line 141
    .line 142
    .line 143
    if-ne v6, v3, :cond_1

    .line 144
    .line 145
    new-instance v6, Lx9/l3;

    .line 146
    .line 147
    invoke-direct {v6, v13, v12}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    new-instance v6, Lx9/l3;

    .line 154
    .line 155
    invoke-direct {v6, v11, v10}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    new-instance v6, Lx9/l3;

    .line 162
    .line 163
    invoke-direct {v6, v2, v14}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iget-object v2, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 170
    .line 171
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_0

    .line 180
    .line 181
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {}, La2/w0;->N()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_0

    .line 191
    .line 192
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 193
    .line 194
    if-lt v2, v9, :cond_0

    .line 195
    .line 196
    new-instance v2, Lx9/l3;

    .line 197
    .line 198
    const v5, 0x7f0801d3

    .line 199
    .line 200
    .line 201
    invoke-direct {v2, v5, v7}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto/16 :goto_3

    .line 208
    .line 209
    :cond_0
    new-instance v2, Lx9/l3;

    .line 210
    .line 211
    invoke-direct {v2, v8, v15}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_1
    iget-object v6, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 220
    .line 221
    iget-object v6, v6, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-eqz v6, :cond_2

    .line 228
    .line 229
    new-instance v2, Lx9/l3;

    .line 230
    .line 231
    const-string v5, "\u5378\u8f7d\u6570\u636e"

    .line 232
    .line 233
    invoke-direct {v2, v8, v5}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto/16 :goto_3

    .line 240
    .line 241
    :cond_2
    iget-object v6, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 242
    .line 243
    iget-boolean v3, v6, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 244
    .line 245
    const-string v9, "\u63d0\u53d6\u5e94\u7528"

    .line 246
    .line 247
    if-eqz v3, :cond_3

    .line 248
    .line 249
    new-instance v3, Lx9/l3;

    .line 250
    .line 251
    const v5, 0x7f08027a

    .line 252
    .line 253
    .line 254
    const-string v6, "\u6062\u590d\u5b89\u88c5"

    .line 255
    .line 256
    invoke-direct {v3, v5, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    new-instance v3, Lx9/l3;

    .line 263
    .line 264
    invoke-direct {v3, v2, v9}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    new-instance v2, Lx9/l3;

    .line 271
    .line 272
    const-string v3, "\u5f3a\u5236\u5220\u9664"

    .line 273
    .line 274
    invoke-direct {v2, v8, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :cond_3
    iget-boolean v3, v6, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 283
    .line 284
    const v11, 0x7f080276

    .line 285
    .line 286
    .line 287
    if-eqz v3, :cond_4

    .line 288
    .line 289
    new-instance v3, Lx9/l3;

    .line 290
    .line 291
    const-string v5, "\u53d6\u6d88\u9690\u85cf"

    .line 292
    .line 293
    invoke-direct {v3, v11, v5}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    new-instance v3, Lx9/l3;

    .line 300
    .line 301
    invoke-direct {v3, v2, v9}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :cond_4
    iget-boolean v3, v6, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 310
    .line 311
    const-string v6, "\u89e3\u7981"

    .line 312
    .line 313
    const v9, 0x7f080284

    .line 314
    .line 315
    .line 316
    if-eqz v3, :cond_5

    .line 317
    .line 318
    new-instance v3, Lx9/l3;

    .line 319
    .line 320
    invoke-direct {v3, v9, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    new-instance v3, Lx9/l3;

    .line 327
    .line 328
    invoke-direct {v3, v8, v15}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    new-instance v3, Lx9/l3;

    .line 335
    .line 336
    invoke-direct {v3, v2, v14}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :cond_5
    new-instance v3, Lx9/l3;

    .line 345
    .line 346
    const v9, 0x7f0802d4

    .line 347
    .line 348
    .line 349
    const-string v13, "\u542f\u52a8"

    .line 350
    .line 351
    invoke-direct {v3, v9, v13}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    new-instance v3, Lx9/l3;

    .line 358
    .line 359
    invoke-direct {v3, v2, v14}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    iget-object v2, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 366
    .line 367
    iget-boolean v3, v2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 368
    .line 369
    if-nez v3, :cond_6

    .line 370
    .line 371
    new-instance v2, Lx9/l3;

    .line 372
    .line 373
    invoke-direct {v2, v8, v15}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_0

    .line 380
    :cond_6
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 381
    .line 382
    const-string v3, "/data/app/"

    .line 383
    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_7

    .line 389
    .line 390
    new-instance v2, Lx9/l3;

    .line 391
    .line 392
    const v3, 0x7f08027c

    .line 393
    .line 394
    .line 395
    const-string v9, "\u8fd8\u539f"

    .line 396
    .line 397
    invoke-direct {v2, v3, v9}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    :cond_7
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    invoke-static {}, La2/w0;->L()Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-eqz v2, :cond_8

    .line 413
    .line 414
    new-instance v2, Lx9/l3;

    .line 415
    .line 416
    invoke-direct {v2, v8, v15}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    :cond_8
    :goto_0
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 423
    .line 424
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    invoke-static {}, La2/w0;->N()Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-eqz v2, :cond_c

    .line 432
    .line 433
    new-instance v2, Lx9/l3;

    .line 434
    .line 435
    iget-object v3, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 436
    .line 437
    iget-boolean v3, v3, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 438
    .line 439
    if-eqz v3, :cond_9

    .line 440
    .line 441
    const v9, 0x7f080284

    .line 442
    .line 443
    .line 444
    goto :goto_1

    .line 445
    :cond_9
    const v9, 0x7f08028b

    .line 446
    .line 447
    .line 448
    :goto_1
    if-eqz v3, :cond_a

    .line 449
    .line 450
    goto :goto_2

    .line 451
    :cond_a
    const-string v6, "\u7981\u7528"

    .line 452
    .line 453
    :goto_2
    invoke-direct {v2, v9, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    new-instance v2, Lx9/l3;

    .line 460
    .line 461
    const-string v3, "\u9690\u85cf"

    .line 462
    .line 463
    invoke-direct {v2, v11, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    new-instance v2, Lx9/l3;

    .line 470
    .line 471
    const v3, 0x7f08022e

    .line 472
    .line 473
    .line 474
    invoke-direct {v2, v3, v12}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    new-instance v2, Lx9/l3;

    .line 481
    .line 482
    const v3, 0x7f080230

    .line 483
    .line 484
    .line 485
    invoke-direct {v2, v3, v10}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 492
    .line 493
    const/16 v3, 0x17

    .line 494
    .line 495
    if-lt v2, v3, :cond_b

    .line 496
    .line 497
    new-instance v2, Lx9/l3;

    .line 498
    .line 499
    const v3, 0x7f0801d3

    .line 500
    .line 501
    .line 502
    invoke-direct {v2, v3, v7}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    :cond_b
    new-instance v2, Lx9/l3;

    .line 509
    .line 510
    const v3, 0x7f080297

    .line 511
    .line 512
    .line 513
    const-string v6, "\u7ec4\u4ef6"

    .line 514
    .line 515
    invoke-direct {v2, v3, v6}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    :cond_c
    iget-boolean v2, v5, Lcom/yunpan/appmanage/util/k;->D:Z

    .line 522
    .line 523
    if-eqz v2, :cond_d

    .line 524
    .line 525
    new-instance v2, Lx9/l3;

    .line 526
    .line 527
    const v3, 0x7f080127

    .line 528
    .line 529
    .line 530
    const-string v5, "\u8be6\u60c5"

    .line 531
    .line 532
    invoke-direct {v2, v3, v5}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    rem-int/lit8 v2, v2, 0x2

    .line 543
    .line 544
    const/4 v3, 0x1

    .line 545
    if-ne v2, v3, :cond_e

    .line 546
    .line 547
    new-instance v2, Lx9/l3;

    .line 548
    .line 549
    const v3, 0x7f08025b

    .line 550
    .line 551
    .line 552
    const-string v5, "\u8fd4\u56de"

    .line 553
    .line 554
    invoke-direct {v2, v3, v5}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    :cond_e
    :goto_3
    iget-object v2, v0, Lha/o2;->m:Lx9/t;

    .line 561
    .line 562
    invoke-virtual {v2, v4}, Lc6/g;->E(Ljava/util/List;)V

    .line 563
    .line 564
    .line 565
    iget-object v2, v0, Lha/o2;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 566
    .line 567
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 568
    .line 569
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    const/4 v6, 0x6

    .line 574
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    if-ge v5, v6, :cond_f

    .line 579
    .line 580
    goto :goto_4

    .line 581
    :cond_f
    div-int/lit8 v4, v4, 0x2

    .line 582
    .line 583
    :goto_4
    invoke-direct {v3, v1, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 587
    .line 588
    .line 589
    iget-object v1, v0, Lha/o2;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 590
    .line 591
    const/4 v2, 0x0

    .line 592
    invoke-virtual {v1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 593
    .line 594
    .line 595
    iget-object v1, v0, Lha/o2;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 596
    .line 597
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 598
    .line 599
    .line 600
    iput-boolean v2, v0, Lha/o2;->r:Z

    .line 601
    .line 602
    const/4 v1, 0x0

    .line 603
    iput-object v1, v0, Lha/o2;->j:Landroid/content/pm/PackageInfo;

    .line 604
    .line 605
    new-instance v1, Lha/g2;

    .line 606
    .line 607
    const/4 v3, 0x4

    .line 608
    invoke-direct {v1, v0, v3}, Lha/g2;-><init>(Lha/o2;I)V

    .line 609
    .line 610
    .line 611
    new-instance v3, Lmc/c;

    .line 612
    .line 613
    invoke-direct {v3, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 617
    .line 618
    invoke-virtual {v3, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    new-instance v2, Lha/m2;

    .line 631
    .line 632
    const/4 v3, 0x1

    .line 633
    invoke-direct {v2, v0, v3}, Lha/m2;-><init>(Lha/o2;I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 637
    .line 638
    .line 639
    return-void
.end method

.method public final f(Z)V
    .locals 5

    .line 1
    const-string v0, "\u5378\u8f7d\u4e2d"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 7
    .line 8
    iget-object v1, p0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Lha/g2;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-direct {v2, p0, v3}, Lha/g2;-><init>(Lha/o2;I)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, La2/w0;->c:Ljava/lang/Object;

    .line 19
    .line 20
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    new-instance v3, Lfa/s;

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-direct {v3, v0, v1, p1, v4}, Lfa/s;-><init>(La2/w0;Ljava/lang/String;ZI)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final g(Z)V
    .locals 2

    .line 1
    new-instance v0, Lha/h2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lmc/c;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lha/l2;

    .line 28
    .line 29
    const/16 v1, 0x1c

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lha/l2;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b040e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0b0421

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object p1, p0, Lha/o2;->t:Landroid/widget/TextView;

    .line 30
    .line 31
    const p1, 0x7f0b052d

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lha/o2;->v:Landroid/widget/TextView;

    .line 41
    .line 42
    const p1, 0x7f0b0420

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/ImageView;

    .line 50
    .line 51
    iput-object p1, p0, Lha/o2;->w:Landroid/widget/ImageView;

    .line 52
    .line 53
    const p1, 0x7f0b0424

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object p1, p0, Lha/o2;->x:Landroid/widget/TextView;

    .line 63
    .line 64
    const p1, 0x7f0b05b8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/TextView;

    .line 72
    .line 73
    iput-object p1, p0, Lha/o2;->y:Landroid/widget/TextView;

    .line 74
    .line 75
    new-instance p1, Lx9/t;

    .line 76
    .line 77
    invoke-direct {p1}, Lx9/t;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lha/o2;->m:Lx9/t;

    .line 81
    .line 82
    const p1, 0x7f0b04f1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 90
    .line 91
    iput-object p1, p0, Lha/o2;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lha/o2;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 98
    .line 99
    iget-object v0, p0, Lha/o2;->m:Lx9/t;

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lha/o2;->m:Lx9/t;

    .line 105
    .line 106
    new-instance v0, Lha/g2;

    .line 107
    .line 108
    const/4 v1, 0x5

    .line 109
    invoke-direct {v0, p0, v1}, Lha/g2;-><init>(Lha/o2;I)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 113
    .line 114
    iget-object p1, p0, Lha/o2;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 115
    .line 116
    new-instance v0, Lha/k2;

    .line 117
    .line 118
    invoke-direct {v0}, Lha/k2;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lha/o2;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 125
    .line 126
    new-instance v0, Lg2/c;

    .line 127
    .line 128
    const/4 v1, 0x4

    .line 129
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
