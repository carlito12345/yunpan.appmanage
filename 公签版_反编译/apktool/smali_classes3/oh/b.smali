.class public final synthetic Loh/b;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;I)V
    .locals 0

    .line 1
    iput p2, p0, Loh/b;->a:I

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Loh/b;->b:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Loh/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Loh/b;->b:Ljava/util/function/Supplier;

    .line 7
    .line 8
    check-cast v0, Lah/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x2000

    .line 14
    .line 15
    new-array v0, v0, [C

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    iget-object v0, p0, Loh/b;->b:Ljava/util/function/Supplier;

    .line 19
    .line 20
    check-cast v0, Lah/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x2000

    .line 26
    .line 27
    new-array v0, v0, [B

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1
    iget-object v0, p0, Loh/b;->b:Ljava/util/function/Supplier;

    .line 31
    .line 32
    check-cast v0, Lah/a;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_2
    iget-object v0, p0, Loh/b;->b:Ljava/util/function/Supplier;

    .line 44
    .line 45
    check-cast v0, Lah/a;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    new-array v0, v0, [C

    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_3
    iget-object v0, p0, Loh/b;->b:Ljava/util/function/Supplier;

    .line 55
    .line 56
    check-cast v0, Lah/a;

    .line 57
    .line 58
    invoke-virtual {v0}, Lah/a;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
