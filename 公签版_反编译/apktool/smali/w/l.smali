.class public final Lw/l;
.super Lw/y1;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x2

    .line 5
    invoke-direct {p0, v0}, Lw/y1;-><init>(I)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lw/l;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw/y1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lw/y1;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lw/l;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lw/y1;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-boolean p1, p1, Lw/l;->a:Z

    iput-boolean p1, p0, Lw/l;->a:Z

    return-void
.end method
