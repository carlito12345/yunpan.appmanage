.class public final Lei/d;
.super La/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lei/e;


# direct methods
.method public synthetic constructor <init>(Lei/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lei/d;->b:Lei/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, La/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public t()V
    .locals 10

    .line 1
    iget-object v0, p0, Lei/d;->b:Lei/e;

    .line 2
    .line 3
    iget-object v1, v0, Lei/e;->d:Lei/b;

    .line 4
    .line 5
    check-cast v1, Lei/h;

    .line 6
    .line 7
    iget-object v2, v1, Lei/h;->n:Ldi/a;

    .line 8
    .line 9
    iget v1, v1, Lei/h;->z:I

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ldi/a;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x100

    .line 16
    .line 17
    or-int/2addr v1, v2

    .line 18
    iget-object v0, v0, Lei/e;->d:Lei/b;

    .line 19
    .line 20
    check-cast v0, Lei/h;

    .line 21
    .line 22
    iget-object v3, v0, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 23
    .line 24
    iget v3, v3, Landroidx/leanback/widget/i;->b:I

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x7

    .line 28
    const/4 v6, 0x1

    .line 29
    if-ge v3, v5, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    :goto_0
    iget-object v5, p0, La/b;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, [S

    .line 37
    .line 38
    const/high16 v7, 0x10000

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    :cond_1
    ushr-int/lit8 v2, v1, 0x8

    .line 43
    .line 44
    ushr-int/lit8 v3, v1, 0x7

    .line 45
    .line 46
    and-int/2addr v3, v6

    .line 47
    iget-object v4, v0, Lei/h;->m:Lfi/d;

    .line 48
    .line 49
    invoke-virtual {v4, v5, v2, v3}, Lfi/d;->o0([SII)V

    .line 50
    .line 51
    .line 52
    shl-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    if-lt v1, v7, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v3, v0, Lei/b;->b:[I

    .line 58
    .line 59
    aget v3, v3, v4

    .line 60
    .line 61
    add-int/2addr v3, v6

    .line 62
    iget v4, v0, Lei/h;->z:I

    .line 63
    .line 64
    add-int/2addr v3, v4

    .line 65
    iget-object v4, v0, Lei/h;->n:Ldi/a;

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ldi/a;->b(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    :cond_3
    shl-int/2addr v3, v6

    .line 72
    and-int v4, v3, v2

    .line 73
    .line 74
    add-int/2addr v4, v2

    .line 75
    ushr-int/lit8 v8, v1, 0x8

    .line 76
    .line 77
    add-int/2addr v4, v8

    .line 78
    ushr-int/lit8 v8, v1, 0x7

    .line 79
    .line 80
    and-int/2addr v8, v6

    .line 81
    iget-object v9, v0, Lei/h;->m:Lfi/d;

    .line 82
    .line 83
    invoke-virtual {v9, v5, v4, v8}, Lfi/d;->o0([SII)V

    .line 84
    .line 85
    .line 86
    shl-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    xor-int v4, v3, v1

    .line 89
    .line 90
    xor-int/lit8 v4, v4, -0x1

    .line 91
    .line 92
    and-int/2addr v2, v4

    .line 93
    if-lt v1, v7, :cond_3

    .line 94
    .line 95
    :goto_1
    iget-object v0, v0, Lei/b;->c:Landroidx/leanback/widget/i;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/leanback/widget/i;->k()V

    .line 98
    .line 99
    .line 100
    return-void
.end method
