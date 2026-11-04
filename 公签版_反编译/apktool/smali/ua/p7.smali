.class public final synthetic Lua/p7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ga;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityUsers;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityUsers;ILjava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p4, p0, Lua/p7;->a:I

    iput-object p1, p0, Lua/p7;->b:Lcom/yunpan/appmanage/ui/ActivityUsers;

    iput p2, p0, Lua/p7;->c:I

    iput-object p3, p0, Lua/p7;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 4

    .line 1
    iget v0, p0, Lua/p7;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lua/p7;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Lua/p7;->b:Lcom/yunpan/appmanage/ui/ActivityUsers;

    .line 6
    .line 7
    iget v3, p0, Lua/p7;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v3, Lcom/yunpan/appmanage/ui/ActivityUsers;->G:I

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 22
    .line 23
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v2, v0, p1}, Lcom/yunpan/appmanage/ui/ActivityUsers;->x(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    sget v3, Lcom/yunpan/appmanage/ui/ActivityUsers;->G:I

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 43
    .line 44
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, v0, p1}, Lcom/yunpan/appmanage/ui/ActivityUsers;->x(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
