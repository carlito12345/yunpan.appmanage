.class public final synthetic Lua/q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityUsersApps;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityUsersApps;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/q7;->a:I

    iput-object p1, p0, Lua/q7;->b:Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lua/q7;->b:Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 2
    .line 3
    iget v0, p0, Lua/q7;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->K:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lua/r7;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lua/r7;-><init>(Lcom/yunpan/appmanage/ui/ActivityUsersApps;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lmc/c;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lua/s7;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, v2, p1}, Lua/s7;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->K:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

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
