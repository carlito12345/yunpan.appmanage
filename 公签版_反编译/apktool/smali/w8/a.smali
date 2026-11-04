.class public final synthetic Lw8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw8/b;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lw8/b;IIFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/a;->a:Lw8/b;

    iput p2, p0, Lw8/a;->b:I

    iput p3, p0, Lw8/a;->c:I

    iput p4, p0, Lw8/a;->d:F

    iput p5, p0, Lw8/a;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lw8/a;->a:Lw8/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw8/b;->g()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lw8/b;->f()V

    .line 7
    .line 8
    .line 9
    iget v1, v0, Lw8/b;->e:I

    .line 10
    .line 11
    iget v2, v0, Lw8/b;->f:I

    .line 12
    .line 13
    iget v3, p0, Lw8/a;->b:I

    .line 14
    .line 15
    sub-int/2addr v1, v3

    .line 16
    iget v3, p0, Lw8/a;->c:I

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    const/4 v3, 0x0

    .line 20
    if-gtz v1, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    int-to-float v4, v1

    .line 25
    iget v5, p0, Lw8/a;->d:F

    .line 26
    .line 27
    mul-float v4, v4, v5

    .line 28
    .line 29
    float-to-int v4, v4

    .line 30
    :goto_0
    if-gtz v2, :cond_1

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    int-to-float v5, v2

    .line 35
    iget v6, p0, Lw8/a;->e:F

    .line 36
    .line 37
    mul-float v5, v5, v6

    .line 38
    .line 39
    float-to-int v5, v5

    .line 40
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v1, v1

    .line 57
    int-to-float v2, v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lw8/b;->h(FF)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
