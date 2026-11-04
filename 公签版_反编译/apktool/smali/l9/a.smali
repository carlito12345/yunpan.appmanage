.class public final Ll9/a;
.super Lm9/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm9/b;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final c(Lm9/d;)Lokhttp3/Request;
    .locals 1

    .line 1
    iget-object p1, p0, Lm9/e;->h:Lk9/c;

    .line 2
    .line 3
    iget-object p1, p1, Lk9/c;->a:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    iget-object v0, p0, Lm9/e;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p1}, Ln9/a;->c(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lm9/e;->a:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Lokhttp3/Request$Builder;

    .line 14
    .line 15
    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lm9/e;->i:Lk9/a;

    .line 19
    .line 20
    invoke-static {p1, v0}, Ln9/a;->a(Lokhttp3/Request$Builder;Lk9/a;)Lokhttp3/Request$Builder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lm9/e;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lm9/e;->d:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method
