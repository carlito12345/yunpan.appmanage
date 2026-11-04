.class public final Leb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/m;


# instance fields
.field public a:F

.field public final synthetic b:Leb/i;

.field public final synthetic c:Leb/o;


# direct methods
.method public constructor <init>(Leb/o;Leb/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leb/d;->c:Leb/o;

    .line 2
    .line 3
    iput-object p2, p0, Leb/d;->b:Leb/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Leb/d;->a:F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;ZLeb/j;)Z
    .locals 8

    .line 1
    iget v5, p0, Leb/d;->a:F

    .line 2
    .line 3
    iget-object v7, p0, Leb/d;->b:Leb/i;

    .line 4
    .line 5
    iget-object v0, p0, Leb/d;->c:Leb/o;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v6, v7

    .line 12
    invoke-static/range {v0 .. v6}, Leb/o;->a(Leb/o;Ljava/util/ArrayList;ZLeb/j;Landroid/graphics/Canvas;FLeb/i;)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget p2, p0, Leb/d;->a:F

    .line 17
    .line 18
    add-float/2addr p2, p1

    .line 19
    iput p2, p0, Leb/d;->a:F

    .line 20
    .line 21
    iget p1, v7, Leb/i;->c:F

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    cmpl-float p1, p1, p2

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    return p1
.end method
