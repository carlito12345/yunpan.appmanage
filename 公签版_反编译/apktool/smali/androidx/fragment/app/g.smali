.class public final synthetic Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/z1;Landroidx/fragment/app/z1;ZLa0/e;)V
    .locals 0

    .line 1
    const/4 p4, 0x0

    iput p4, p0, Landroidx/fragment/app/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/g;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/fragment/app/g;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;ZLjava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/fragment/app/g;->b:Z

    iput-object p3, p0, Landroidx/fragment/app/g;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/fragment/app/g;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Landroidx/fragment/app/g;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityTextHzh;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->K:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, v2, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->L:Ljava/lang/String;

    .line 20
    .line 21
    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->B(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :pswitch_0
    check-cast v2, Landroidx/fragment/app/z1;

    .line 34
    .line 35
    check-cast v0, Landroidx/fragment/app/z1;

    .line 36
    .line 37
    sget-object v3, Landroidx/fragment/app/n1;->a:Landroidx/fragment/app/t1;

    .line 38
    .line 39
    const-string v3, "inFragment"

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 42
    .line 43
    invoke-static {v2, v3}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v3, "outFragment"

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    invoke-static {v0, v3}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lm0/r0;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lm0/r0;

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
