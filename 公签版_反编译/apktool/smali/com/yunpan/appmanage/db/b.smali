.class public final synthetic Lcom/yunpan/appmanage/db/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/db/b;->a:I

    iput-object p2, p0, Lcom/yunpan/appmanage/db/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/db/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lcom/yunpan/appmanage/db/b;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    sget v1, Lcom/yunpan/appmanage/ui/ActivityClean;->M:I

    .line 11
    .line 12
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/yunpan/appmanage/ui/ActivityClean;->x(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast v0, Ljava/util/LinkedList;

    .line 19
    .line 20
    check-cast p1, Ljg/v;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/yunpan/appmanage/db/MyDb;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/db/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
