.class public final Landroidx/fragment/app/z;
.super Landroidx/fragment/app/c0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/y;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Ln/a;

.field public final synthetic d:Landroidx/activity/result/b;

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/y;Ljava/util/concurrent/atomic/AtomicReference;Ln/a;Landroidx/activity/result/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/y;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/fragment/app/z;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/fragment/app/z;->c:Ln/a;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/fragment/app/z;->d:Landroidx/activity/result/b;

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/c0;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/y;

    .line 8
    .line 9
    iget v3, v2, Landroidx/fragment/app/y;->a:I

    .line 10
    .line 11
    packed-switch v3, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v2, v2, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroidx/activity/result/g;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    iget-object v2, v2, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/o0;

    .line 24
    .line 25
    instance-of v4, v3, Landroidx/activity/result/h;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    check-cast v3, Landroidx/activity/result/h;

    .line 30
    .line 31
    invoke-interface {v3}, Landroidx/activity/result/h;->e()Landroidx/activity/result/g;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/j0;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Landroidx/activity/m;->k:Landroidx/activity/g;

    .line 41
    .line 42
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/z;->c:Ln/a;

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/fragment/app/z;->d:Landroidx/activity/result/b;

    .line 45
    .line 46
    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/activity/result/g;->c(Ljava/lang/String;Landroidx/lifecycle/t;Ln/a;Landroidx/activity/result/b;)Landroidx/activity/result/d;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Landroidx/fragment/app/z;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
