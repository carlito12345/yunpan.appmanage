.class public final Lba/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:J


# direct methods
.method public constructor <init>(Lz7/s;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "fileId"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lba/g;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "fileName"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lba/g;->b:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "utime"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lz7/p;->h()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Lif/a;->m0(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lba/g;->c:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p1, Lz7/s;->a:Lb8/n;

    .line 45
    .line 46
    const-string v1, "fileSize"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    xor-int/lit8 v2, v0, 0x1

    .line 53
    .line 54
    iput-boolean v2, p0, Lba/g;->d:Z

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lz7/p;->h()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    iput-wide v0, p0, Lba/g;->e:J

    .line 67
    .line 68
    :cond_0
    return-void
.end method
