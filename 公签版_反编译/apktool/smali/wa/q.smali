.class public final synthetic Lwa/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lwa/s;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lwa/s;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa/q;->a:Lwa/s;

    iput p2, p0, Lwa/q;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lz7/p;

    .line 2
    .line 3
    iget-object v0, p0, Lwa/q;->a:Lwa/s;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "isOpen"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "event"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "type"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 41
    .line 42
    .line 43
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    iget v2, p0, Lwa/q;->b:I

    .line 45
    .line 46
    if-ne v1, v2, :cond_0

    .line 47
    .line 48
    :try_start_1
    iget-object v0, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 49
    .line 50
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v1, "click"

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
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
