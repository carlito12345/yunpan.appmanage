.class public Lyh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lyh/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "Dummy"

    .line 2
    .line 3
    new-instance v1, Lyh/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lyh/b;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "org.tukaani.xz.ArrayCache"

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    move-object v2, v0

    .line 17
    :cond_0
    const-string v3, "Basic"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sput-object v1, Lyh/b;->a:Lyh/b;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/Error;

    .line 35
    .line 36
    const-string v1, "Unsupported value \'"

    .line 37
    .line 38
    const-string v3, "\' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"

    .line 39
    .line 40
    invoke-static {v1, v2, v3}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_2
    sget-object v0, Lyh/e;->a:Lyh/f;

    .line 49
    .line 50
    sput-object v0, Lyh/b;->a:Lyh/b;

    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(I)[B
    .locals 0

    .line 1
    new-array p1, p1, [B

    .line 2
    .line 3
    return-object p1
.end method

.method public b(IZ)[I
    .locals 0

    .line 1
    new-array p1, p1, [I

    .line 2
    .line 3
    return-object p1
.end method

.method public c([B)V
    .locals 0

    .line 1
    return-void
.end method

.method public d([I)V
    .locals 0

    .line 1
    return-void
.end method
