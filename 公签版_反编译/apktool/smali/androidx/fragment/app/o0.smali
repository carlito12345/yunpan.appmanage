.class public abstract Landroidx/fragment/app/o0;
.super Landroidx/fragment/app/m0;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/j0;

.field public final b:Landroidx/fragment/app/j0;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/e1;


# direct methods
.method public constructor <init>(Lq/i;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/fragment/app/m0;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/fragment/app/e1;

    .line 10
    .line 11
    invoke-direct {v1}, Landroidx/fragment/app/e1;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/fragment/app/o0;->d:Landroidx/fragment/app/e1;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/fragment/app/o0;->a:Landroidx/fragment/app/j0;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/fragment/app/o0;->b:Landroidx/fragment/app/j0;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/fragment/app/o0;->c:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method
