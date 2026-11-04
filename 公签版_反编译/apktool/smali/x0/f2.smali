.class public final Lx0/f2;
.super Lx0/e2;
.source "SourceFile"


# static fields
.field public static final q:Lx0/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/video/b0;->k()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lx0/j2;->h(Landroid/view/View;Landroid/view/WindowInsets;)Lx0/j2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lx0/f2;->q:Lx0/j2;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lx0/j2;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lx0/e2;-><init>(Lx0/j2;Landroid/view/WindowInsets;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(I)Lp0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/b2;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Lx0/i2;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/b0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lp0/c;->c(Landroid/graphics/Insets;)Lp0/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
