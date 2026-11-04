.class public final Landroidx/fragment/app/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/Fragment;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/lifecycle/n;

.field public i:Landroidx/lifecycle/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Landroidx/fragment/app/m1;->a:I

    .line 10
    iput-object p2, p0, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/fragment/app/m1;->c:Z

    .line 12
    sget-object p1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/m1;->h:Landroidx/lifecycle/n;

    .line 13
    iput-object p1, p0, Landroidx/fragment/app/m1;->i:Landroidx/lifecycle/n;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Landroidx/fragment/app/m1;->a:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/m1;->c:Z

    .line 6
    sget-object p1, Landroidx/lifecycle/n;->e:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/m1;->h:Landroidx/lifecycle/n;

    .line 7
    iput-object p1, p0, Landroidx/fragment/app/m1;->i:Landroidx/lifecycle/n;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/n;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 15
    iput v0, p0, Landroidx/fragment/app/m1;->a:I

    .line 16
    iput-object p1, p0, Landroidx/fragment/app/m1;->b:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Landroidx/fragment/app/m1;->c:Z

    .line 18
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/n;

    iput-object p1, p0, Landroidx/fragment/app/m1;->h:Landroidx/lifecycle/n;

    .line 19
    iput-object p2, p0, Landroidx/fragment/app/m1;->i:Landroidx/lifecycle/n;

    return-void
.end method
