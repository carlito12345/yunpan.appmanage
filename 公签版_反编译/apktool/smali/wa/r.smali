.class public final synthetic Lwa/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lwa/s;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lwa/s;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa/r;->a:Lwa/s;

    iput p2, p0, Lwa/r;->b:I

    iput-object p3, p0, Lwa/r;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lwa/r;->c:Ljava/lang/String;

    .line 2
    .line 3
    check-cast p1, Lz7/p;

    .line 4
    .line 5
    iget-object v1, p0, Lwa/r;->a:Lwa/s;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "isOpen"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "event"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "type"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lz7/p;->e()I

    .line 43
    .line 44
    .line 45
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget v4, p0, Lwa/r;->b:I

    .line 47
    .line 48
    if-ne v3, v4, :cond_0

    .line 49
    .line 50
    :try_start_1
    const-string v3, "str1"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    iget-object v0, v1, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 67
    .line 68
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v1, "click"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_0
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
