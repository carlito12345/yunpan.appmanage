.class public final Lokhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Header$Listener;
    }
.end annotation


# static fields
.field public static final PSEUDO_PREFIX:Lfg/l;

.field public static final RESPONSE_STATUS:Lfg/l;

.field public static final RESPONSE_STATUS_UTF8:Ljava/lang/String; = ":status"

.field public static final TARGET_AUTHORITY:Lfg/l;

.field public static final TARGET_AUTHORITY_UTF8:Ljava/lang/String; = ":authority"

.field public static final TARGET_METHOD:Lfg/l;

.field public static final TARGET_METHOD_UTF8:Ljava/lang/String; = ":method"

.field public static final TARGET_PATH:Lfg/l;

.field public static final TARGET_PATH_UTF8:Ljava/lang/String; = ":path"

.field public static final TARGET_SCHEME:Lfg/l;

.field public static final TARGET_SCHEME_UTF8:Ljava/lang/String; = ":scheme"


# instance fields
.field final hpackSize:I

.field public final name:Lfg/l;

.field public final value:Lfg/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lfg/l;->d:Lfg/l;

    .line 2
    .line 3
    const-string v0, ":"

    .line 4
    .line 5
    invoke-static {v0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lfg/l;

    .line 10
    .line 11
    const-string v0, ":status"

    .line 12
    .line 13
    invoke-static {v0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lfg/l;

    .line 18
    .line 19
    const-string v0, ":method"

    .line 20
    .line 21
    invoke-static {v0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lfg/l;

    .line 26
    .line 27
    const-string v0, ":path"

    .line 28
    .line 29
    invoke-static {v0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lfg/l;

    .line 34
    .line 35
    const-string v0, ":scheme"

    .line 36
    .line 37
    invoke-static {v0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lfg/l;

    .line 42
    .line 43
    const-string v0, ":authority"

    .line 44
    .line 45
    invoke-static {v0}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lfg/l;

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Lfg/l;Lfg/l;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lokhttp3/internal/http2/Header;->name:Lfg/l;

    .line 7
    iput-object p2, p0, Lokhttp3/internal/http2/Header;->value:Lfg/l;

    .line 8
    invoke-virtual {p1}, Lfg/l;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lfg/l;->g()I

    move-result p2

    add-int/2addr p2, p1

    .line 9
    iput p2, p0, Lokhttp3/internal/http2/Header;->hpackSize:I

    return-void
.end method

.method public constructor <init>(Lfg/l;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lfg/l;->d:Lfg/l;

    invoke-static {p2}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Header;-><init>(Lfg/l;Lfg/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lfg/l;->d:Lfg/l;

    invoke-static {p1}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    move-result-object p1

    invoke-static {p2}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    move-result-object p2

    .line 4
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Header;-><init>(Lfg/l;Lfg/l;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lokhttp3/internal/http2/Header;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lokhttp3/internal/http2/Header;

    .line 7
    .line 8
    iget-object v0, p0, Lokhttp3/internal/http2/Header;->name:Lfg/l;

    .line 9
    .line 10
    iget-object v2, p1, Lokhttp3/internal/http2/Header;->name:Lfg/l;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lfg/l;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lokhttp3/internal/http2/Header;->value:Lfg/l;

    .line 19
    .line 20
    iget-object p1, p1, Lokhttp3/internal/http2/Header;->value:Lfg/l;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lfg/l;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Header;->name:Lfg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfg/l;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x20f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Lokhttp3/internal/http2/Header;->value:Lfg/l;

    .line 12
    .line 13
    invoke-virtual {v1}, Lfg/l;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Header;->name:Lfg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfg/l;->q()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lokhttp3/internal/http2/Header;->value:Lfg/l;

    .line 8
    .line 9
    invoke-virtual {v1}, Lfg/l;->q()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v2, v0

    .line 21
    .line 22
    const-string v0, "%s: %s"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
