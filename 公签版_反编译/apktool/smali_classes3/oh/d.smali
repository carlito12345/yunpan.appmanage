.class public final synthetic Loh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Loh/e;

    .line 2
    .line 3
    check-cast p2, Loh/e;

    .line 4
    .line 5
    iget-object v0, p2, Loh/e;->a:Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-static {v0}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p2, Loh/e;->a:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget-object p2, p1, Loh/e;->a:Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-static {p2}, Lnh/b;->d0(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p1, Loh/e;->a:Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    return-object p1
.end method
