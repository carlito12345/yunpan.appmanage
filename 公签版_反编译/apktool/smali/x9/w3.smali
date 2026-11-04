.class public final Lx9/w3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public final n:Lv3/f;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lx9/w3;->g:J

    .line 6
    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lx9/w3;->i:Z

    .line 8
    iput-object v0, p0, Lx9/w3;->j:Ljava/lang/String;

    .line 9
    iput v1, p0, Lx9/w3;->k:I

    .line 10
    iput-object v0, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lx9/w3;->n:Lv3/f;

    .line 13
    iput-object v1, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lx9/w3;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lx9/w3;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/db/FileInfo;)V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 207
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 209
    iput-object v0, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 210
    iput-wide v1, p0, Lx9/w3;->g:J

    .line 211
    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 212
    iput-boolean v1, p0, Lx9/w3;->i:Z

    .line 213
    iput-object v0, p0, Lx9/w3;->j:Ljava/lang/String;

    .line 214
    iput v1, p0, Lx9/w3;->k:I

    .line 215
    iput-object v0, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lx9/w3;->n:Lv3/f;

    .line 218
    iput-object v0, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 219
    iget-object v0, p1, Lcom/yunpan/appmanage/db/FileInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 220
    iget-object v0, p1, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    iput-object v0, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/yunpan/appmanage/db/FileInfo;->parent:Ljava/lang/String;

    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 222
    iget-boolean v0, p1, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    iput-boolean v0, p0, Lx9/w3;->c:Z

    .line 223
    iget-wide v0, p1, Lcom/yunpan/appmanage/db/FileInfo;->lastModified:J

    iput-wide v0, p0, Lx9/w3;->g:J

    .line 224
    invoke-static {v0, v1}, Lif/a;->m0(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    .line 225
    iget-object v0, p1, Lcom/yunpan/appmanage/db/FileInfo;->link:Ljava/lang/String;

    iput-object v0, p0, Lx9/w3;->f:Ljava/lang/String;

    .line 226
    iget-boolean v0, p1, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    if-nez v0, :cond_0

    .line 227
    iget-wide v0, p1, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    iput-wide v0, p0, Lx9/w3;->d:J

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/shizuku/FileParcelable;)V
    .locals 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 101
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 104
    iput-wide v1, p0, Lx9/w3;->g:J

    .line 105
    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lx9/w3;->i:Z

    .line 107
    iput-object v0, p0, Lx9/w3;->j:Ljava/lang/String;

    .line 108
    iput v1, p0, Lx9/w3;->k:I

    .line 109
    iput-object v0, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lx9/w3;->n:Lv3/f;

    .line 112
    iput-object v1, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 113
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/yunpan/appmanage/shizuku/FileParcelable;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 114
    const-string v2, "\u200b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 115
    :cond_0
    iget-object v1, p1, Lcom/yunpan/appmanage/shizuku/FileParcelable;->path:Ljava/lang/String;

    iput-object v1, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lx9/w3;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 117
    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 118
    :cond_1
    :try_start_0
    iget-wide v0, p1, Lcom/yunpan/appmanage/shizuku/FileParcelable;->length:J

    iput-wide v0, p0, Lx9/w3;->d:J

    .line 119
    iget-wide v0, p1, Lcom/yunpan/appmanage/shizuku/FileParcelable;->lastModified:J

    iput-wide v0, p0, Lx9/w3;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 122
    iget-wide v2, p0, Lx9/w3;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    .line 124
    iget-boolean p1, p1, Lcom/yunpan/appmanage/shizuku/FileParcelable;->isDir:Z

    iput-boolean p1, p0, Lx9/w3;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 60
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 61
    const-string v2, ""

    iput-object v2, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 63
    iput-wide v3, p0, Lx9/w3;->g:J

    .line 64
    iput-object v2, p0, Lx9/w3;->h:Ljava/lang/String;

    const/4 v3, 0x0

    .line 65
    iput-boolean v3, p0, Lx9/w3;->i:Z

    .line 66
    iput-object v2, p0, Lx9/w3;->j:Ljava/lang/String;

    .line 67
    iput v3, p0, Lx9/w3;->k:I

    .line 68
    iput-object v2, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v4, 0x0

    .line 70
    iput-object v4, p0, Lx9/w3;->n:Lv3/f;

    .line 71
    iput-object v4, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 73
    const-string v5, "\u200b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 75
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lx9/w3;->e:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 76
    iput-object v2, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 77
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lx9/w3;->d:J

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lx9/w3;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 79
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 81
    iget-wide v5, p0, Lx9/w3;->g:J

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 82
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lx9/w3;->h:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    iput-boolean v3, p0, Lx9/w3;->c:Z

    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 86
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 87
    iput-boolean v4, p0, Lx9/w3;->c:Z

    goto :goto_2

    .line 88
    :cond_3
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 89
    invoke-static {p1}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lvb/t;->k(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    invoke-static {p1}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lvb/t;->e(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lvb/t;->b(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx9/w3;->f:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lvb/t;->b(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 93
    iput-boolean v3, p0, Lx9/w3;->c:Z

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx9/w3;->f:Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 98
    iput-boolean v3, p0, Lx9/w3;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :cond_5
    :goto_1
    iget-wide v0, p0, Lx9/w3;->d:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-gez p1, :cond_6

    iput-boolean v4, p0, Lx9/w3;->c:Z

    :cond_6
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lx9/w3;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 144
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 145
    const-string p2, ""

    iput-object p2, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lx9/w3;->g:J

    .line 148
    iput-object p2, p0, Lx9/w3;->h:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lx9/w3;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lx9/w3;->k:I

    .line 151
    iput-object p2, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lx9/w3;->n:Lv3/f;

    .line 154
    iput-object v0, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lx9/w3;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lx9/w3;->c:Z

    .line 158
    iput-boolean p4, p0, Lx9/w3;->i:Z

    .line 159
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx9/w3;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 160
    iput-object p2, p0, Lx9/w3;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 180
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 183
    iput-wide v1, p0, Lx9/w3;->g:J

    .line 184
    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    const/4 v3, 0x0

    .line 185
    iput-boolean v3, p0, Lx9/w3;->i:Z

    .line 186
    iput-object v0, p0, Lx9/w3;->j:Ljava/lang/String;

    .line 187
    iput v3, p0, Lx9/w3;->k:I

    .line 188
    iput-object v0, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v3, 0x0

    .line 190
    iput-object v3, p0, Lx9/w3;->n:Lv3/f;

    .line 191
    iput-object v3, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lx9/w3;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lx9/w3;->c:Z

    .line 195
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :catch_0
    :try_start_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 199
    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 201
    iput-object p1, p0, Lx9/w3;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 202
    :catch_1
    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    .line 203
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx9/w3;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 204
    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 162
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 165
    iput-wide v1, p0, Lx9/w3;->g:J

    .line 166
    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 167
    iput-boolean v1, p0, Lx9/w3;->i:Z

    .line 168
    iput v1, p0, Lx9/w3;->k:I

    .line 169
    iput-object v0, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v2, 0x0

    .line 171
    iput-object v2, p0, Lx9/w3;->n:Lv3/f;

    .line 172
    iput-object v2, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 175
    iput-boolean v1, p0, Lx9/w3;->c:Z

    .line 176
    iput-object p3, p0, Lx9/w3;->j:Ljava/lang/String;

    .line 177
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx9/w3;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 178
    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 126
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 129
    iput-wide v1, p0, Lx9/w3;->g:J

    .line 130
    iput-object v0, p0, Lx9/w3;->h:Ljava/lang/String;

    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lx9/w3;->i:Z

    .line 132
    iput-object v0, p0, Lx9/w3;->j:Ljava/lang/String;

    .line 133
    iput v1, p0, Lx9/w3;->k:I

    .line 134
    iput-object v0, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lx9/w3;->n:Lv3/f;

    .line 137
    iput-object v1, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 140
    iput-boolean p3, p0, Lx9/w3;->c:Z

    .line 141
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx9/w3;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 142
    iput-object v0, p0, Lx9/w3;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lv3/f;Ljava/lang/String;)V
    .locals 11

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 19
    const-string v2, ""

    iput-object v2, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lx9/w3;->f:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 21
    iput-wide v3, p0, Lx9/w3;->g:J

    .line 22
    iput-object v2, p0, Lx9/w3;->h:Ljava/lang/String;

    const/4 v5, 0x0

    .line 23
    iput-boolean v5, p0, Lx9/w3;->i:Z

    .line 24
    iput-object v2, p0, Lx9/w3;->j:Ljava/lang/String;

    .line 25
    iput v5, p0, Lx9/w3;->k:I

    .line 26
    iput-object v2, p0, Lx9/w3;->l:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lx9/w3;->m:Ljava/lang/String;

    const/4 v2, 0x0

    .line 28
    iput-object v2, p0, Lx9/w3;->o:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lx9/w3;->n:Lv3/f;

    .line 30
    iget-object v2, p1, Lv3/f;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v6, p1, Lv3/f;->d:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    const-string v7, "_display_name"

    invoke-static {v2, v6, v7}, Lcom/bumptech/glide/d;->U(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    iput-object v2, p0, Lx9/w3;->a:Ljava/lang/String;

    .line 32
    const-string v2, "/"

    .line 33
    invoke-static {p2, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    iget-object v6, p0, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lx9/w3;->e:Ljava/lang/String;

    .line 36
    iget-object p2, p1, Lv3/f;->c:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iget-object v2, p1, Lv3/f;->d:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    const-string v6, "_size"

    invoke-static {p2, v2, v6, v3, v4}, Lcom/bumptech/glide/d;->T(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v6

    .line 37
    iput-wide v6, p0, Lx9/w3;->d:J

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 39
    :try_start_0
    const-string v7, "last_modified"

    invoke-static {p2, v2, v7, v3, v4}, Lcom/bumptech/glide/d;->T(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v7, v3

    .line 40
    :goto_0
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 42
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 43
    iput-object v6, p0, Lx9/w3;->h:Ljava/lang/String;

    .line 44
    const-string v6, "mime_type"

    invoke-static {p2, v2, v6}, Lcom/bumptech/glide/d;->U(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 45
    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    iput-boolean v5, p0, Lx9/w3;->c:Z

    goto :goto_2

    .line 47
    :cond_1
    :goto_1
    iget-object p2, p1, Lv3/f;->c:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iget-object v7, p1, Lv3/f;->d:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    .line 48
    invoke-static {p2, v7, v6}, Lcom/bumptech/glide/d;->U(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 50
    iput-wide v0, p0, Lx9/w3;->d:J

    .line 51
    iget-object p2, p1, Lv3/f;->c:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iget-object p1, p1, Lv3/f;->d:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    .line 52
    invoke-static {p2, p1, v6}, Lcom/bumptech/glide/d;->U(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 54
    iput-boolean p1, p0, Lx9/w3;->c:Z

    goto :goto_2

    .line 55
    :cond_2
    iget-wide p1, p0, Lx9/w3;->d:J

    cmp-long v2, p1, v3

    if-nez v2, :cond_3

    .line 56
    iput-wide v0, p0, Lx9/w3;->d:J

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lx9/w3;->c:Z

    goto :goto_2

    .line 58
    :cond_3
    iput-boolean v5, p0, Lx9/w3;->c:Z

    :goto_2
    return-void
.end method
