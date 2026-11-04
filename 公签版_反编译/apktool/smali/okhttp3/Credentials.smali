.class public final Lokhttp3/Credentials;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/Util;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static basic(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, ":"

    .line 3
    invoke-static {p0, v0, p1}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object p1, Lfg/l;->d:Lfg/l;

    .line 5
    const-string p1, "<this>"

    invoke-static {p0, p1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "charset"

    invoke-static {p2, p1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lfg/l;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, p2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lfg/l;-><init>([B)V

    .line 7
    invoke-virtual {p1}, Lfg/l;->a()Ljava/lang/String;

    move-result-object p0

    .line 8
    const-string p1, "Basic "

    .line 9
    invoke-static {p1, p0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
