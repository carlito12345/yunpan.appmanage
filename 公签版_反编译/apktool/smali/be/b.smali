.class public final Lbe/b;
.super Lbe/a;
.source "SourceFile"


# static fields
.field public static final f:I

.field public static final g:Ljava/lang/String;


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "jcifs.smb1.smb.client.useUnicode"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x2

    .line 12
    :goto_0
    or-int/lit16 v0, v1, 0x200

    .line 13
    .line 14
    sput v0, Lbe/b;->f:I

    .line 15
    .line 16
    const-string v0, "jcifs.smb1.smb.client.domain"

    .line 17
    .line 18
    invoke-static {v0}, Lwd/a;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    sget-object v0, Lae/g;->m:Lae/g;

    .line 22
    .line 23
    invoke-virtual {v0}, Lae/g;->g()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    const/4 v0, 0x0

    .line 29
    :goto_1
    sput-object v0, Lbe/b;->g:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lbe/a;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lbe/b;->f:I

    .line 5
    .line 6
    or-int/2addr p1, v0

    .line 7
    iput p1, p0, Lbe/a;->a:I

    .line 8
    .line 9
    iput-object p2, p0, Lbe/b;->d:Ljava/lang/String;

    .line 10
    .line 11
    sget-object p1, Lbe/b;->g:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lbe/b;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lbe/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lbe/b;->e:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "Type1Message[suppliedDomain="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "null"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    move-object v0, v3

    .line 17
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ",suppliedWorkstation="

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move-object v1, v3

    .line 28
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ",flags=0x"

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lbe/a;->a:I

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-static {v0, v1}, Lde/c;->c(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "]"

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
