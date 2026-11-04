.class public final Lei/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/leanback/widget/i;

.field public final b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/leanback/widget/i;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroidx/leanback/widget/i;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lei/k;->a:Landroidx/leanback/widget/i;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    iput-object v0, p0, Lei/k;->b:[I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 0

    .line 1
    iput p1, p0, Lei/k;->c:I

    .line 2
    .line 3
    iput p2, p0, Lei/k;->d:I

    .line 4
    .line 5
    iput p3, p0, Lei/k;->e:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lei/k;->f:Z

    .line 9
    .line 10
    return-void
.end method
