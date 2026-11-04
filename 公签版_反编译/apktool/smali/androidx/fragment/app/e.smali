.class public final synthetic Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/f;


# instance fields
.field public final synthetic a:Landroid/animation/Animator;

.field public final synthetic b:Landroidx/fragment/app/z1;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;Landroidx/fragment/app/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/e;->a:Landroid/animation/Animator;

    iput-object p2, p0, Landroidx/fragment/app/e;->b:Landroidx/fragment/app/z1;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    const-string v0, "$operation"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/e;->b:Landroidx/fragment/app/z1;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/e;->a:Landroid/animation/Animator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 11
    .line 12
    .line 13
    const-string v0, "FragmentManager"

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
