.class public final Leb/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public d:Z

.field public final e:Leb/i;

.field public final f:Leb/g;


# direct methods
.method public constructor <init>(Leb/i;Leb/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Leb/l;->a:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Leb/l;->d:Z

    .line 9
    .line 10
    iput-object p1, p0, Leb/l;->e:Leb/i;

    .line 11
    .line 12
    iput-object p2, p0, Leb/l;->f:Leb/g;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Leb/l;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Leb/l;->b:F

    .line 7
    .line 8
    iget v1, p0, Leb/l;->c:F

    .line 9
    .line 10
    iget-object v2, p0, Leb/l;->f:Leb/g;

    .line 11
    .line 12
    invoke-interface {v2, v0, v1}, Leb/g;->a(FF)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Leb/l;->e:Leb/i;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, v0, Leb/i;->c:F

    .line 22
    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Leb/l;->a:Z

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Leb/l;->d:Z

    .line 28
    .line 29
    return-void
.end method

.method public final b(FF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Leb/l;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x358637bd    # 1.0E-6f

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Leb/l;->d:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sub-float v0, p1, v1

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    cmpg-float v0, v0, v2

    .line 21
    .line 22
    if-gtz v0, :cond_0

    .line 23
    .line 24
    iput v1, p0, Leb/l;->b:F

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput p1, p0, Leb/l;->b:F

    .line 28
    .line 29
    :goto_0
    iput p2, p0, Leb/l;->c:F

    .line 30
    .line 31
    iput-boolean v3, p0, Leb/l;->a:Z

    .line 32
    .line 33
    iput-boolean v3, p0, Leb/l;->d:Z

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-boolean v0, p0, Leb/l;->d:Z

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget v0, p0, Leb/l;->c:F

    .line 41
    .line 42
    sub-float v0, p1, v0

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    cmpg-float v0, v0, v2

    .line 49
    .line 50
    if-gtz v0, :cond_2

    .line 51
    .line 52
    iput p2, p0, Leb/l;->c:F

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-boolean v0, p0, Leb/l;->d:Z

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    sub-float v0, p1, v1

    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    cmpg-float v0, v0, v2

    .line 66
    .line 67
    if-gtz v0, :cond_3

    .line 68
    .line 69
    iput p2, p0, Leb/l;->c:F

    .line 70
    .line 71
    iput-boolean v3, p0, Leb/l;->d:Z

    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    invoke-virtual {p0}, Leb/l;->a()V

    .line 75
    .line 76
    .line 77
    iput-boolean v3, p0, Leb/l;->a:Z

    .line 78
    .line 79
    iput p1, p0, Leb/l;->b:F

    .line 80
    .line 81
    iput p2, p0, Leb/l;->c:F

    .line 82
    .line 83
    return-void
.end method
