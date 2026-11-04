.class public final Lx0/z1;
.super Lx0/y1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx0/y1;-><init>()V

    return-void
.end method

.method public constructor <init>(Lx0/j2;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lx0/y1;-><init>(Lx0/j2;)V

    return-void
.end method


# virtual methods
.method public c(ILp0/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/y1;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Lx0/i2;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2}, Lp0/c;->d()Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/video/b0;->v(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
