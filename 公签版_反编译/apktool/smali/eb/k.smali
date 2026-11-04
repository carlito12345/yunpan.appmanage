.class public final Leb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/m;


# instance fields
.field public a:F

.field public final b:Leb/i;

.field public c:Landroid/graphics/Canvas;

.field public final synthetic d:Leb/o;


# direct methods
.method public constructor <init>(Leb/o;Leb/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leb/k;->d:Leb/o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Leb/k;->a:F

    .line 8
    .line 9
    iput-object p2, p0, Leb/k;->b:Leb/i;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;ZLeb/j;)Z
    .locals 8

    .line 1
    iget v7, p0, Leb/k;->a:F

    .line 2
    .line 3
    iget-object v4, p0, Leb/k;->c:Landroid/graphics/Canvas;

    .line 4
    .line 5
    iget-object v6, p0, Leb/k;->b:Leb/i;

    .line 6
    .line 7
    iget-object v0, p0, Leb/k;->d:Leb/o;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    move v2, p2

    .line 11
    move-object v3, p3

    .line 12
    move v5, v7

    .line 13
    invoke-static/range {v0 .. v6}, Leb/o;->a(Leb/o;Ljava/util/ArrayList;ZLeb/j;Landroid/graphics/Canvas;FLeb/i;)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    add-float/2addr v7, p1

    .line 18
    iput v7, p0, Leb/k;->a:F

    .line 19
    .line 20
    iget-object p1, p0, Leb/k;->b:Leb/i;

    .line 21
    .line 22
    iget p1, p1, Leb/i;->c:F

    .line 23
    .line 24
    cmpg-float p1, v7, p1

    .line 25
    .line 26
    if-gez p1, :cond_0

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
