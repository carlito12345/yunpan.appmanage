.class public final Lx0/g1;
.super Lne/d;
.source "SourceFile"

# interfaces
.implements Lte/p;


# instance fields
.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/view/View;

.field public d:I

.field public e:I

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lle/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/g1;->h:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lne/d;-><init>(Lle/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lle/a;)Lle/a;
    .locals 2

    .line 1
    new-instance v0, Lx0/g1;

    .line 2
    .line 3
    iget-object v1, p0, Lx0/g1;->h:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lx0/g1;-><init>(Landroid/view/ViewGroup;Lle/a;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lx0/g1;->g:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lme/a;->a:Lme/a;

    .line 2
    .line 3
    iget v1, p0, Lx0/g1;->f:I

    .line 4
    .line 5
    sget-object v2, Lie/e;->c:Lie/e;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v4, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lx0/g1;->e:I

    .line 16
    .line 17
    iget v4, p0, Lx0/g1;->d:I

    .line 18
    .line 19
    iget-object v5, p0, Lx0/g1;->b:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget-object v6, p0, Lx0/g1;->g:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Laf/a;

    .line 24
    .line 25
    invoke-static {p1}, Ls1/g;->f0(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    iget v1, p0, Lx0/g1;->e:I

    .line 38
    .line 39
    iget v5, p0, Lx0/g1;->d:I

    .line 40
    .line 41
    iget-object v6, p0, Lx0/g1;->c:Landroid/view/View;

    .line 42
    .line 43
    iget-object v7, p0, Lx0/g1;->b:Landroid/view/ViewGroup;

    .line 44
    .line 45
    iget-object v8, p0, Lx0/g1;->g:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v8, Laf/a;

    .line 48
    .line 49
    invoke-static {p1}, Ls1/g;->f0(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    instance-of p1, v6, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    check-cast v6, Landroid/view/ViewGroup;

    .line 57
    .line 58
    new-instance p1, Lx0/g1;

    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    invoke-direct {p1, v6, v9}, Lx0/g1;-><init>(Landroid/view/ViewGroup;Lle/a;)V

    .line 62
    .line 63
    .line 64
    iput-object v8, p0, Lx0/g1;->g:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object v7, p0, Lx0/g1;->b:Landroid/view/ViewGroup;

    .line 67
    .line 68
    iput-object v9, p0, Lx0/g1;->c:Landroid/view/View;

    .line 69
    .line 70
    iput v5, p0, Lx0/g1;->d:I

    .line 71
    .line 72
    iput v1, p0, Lx0/g1;->e:I

    .line 73
    .line 74
    iput v4, p0, Lx0/g1;->f:I

    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v6, Laf/a;

    .line 80
    .line 81
    invoke-direct {v6}, Laf/a;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v6, v6}, Lne/d;->b(Ljava/lang/Object;Lle/a;)Lle/a;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, v6, Laf/a;->d:Lle/a;

    .line 89
    .line 90
    invoke-virtual {v6}, Laf/a;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_2

    .line 95
    .line 96
    move-object p1, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iput-object v6, v8, Laf/a;->c:Ljava/util/Iterator;

    .line 99
    .line 100
    iput v4, v8, Laf/a;->a:I

    .line 101
    .line 102
    iput-object p0, v8, Laf/a;->d:Lle/a;

    .line 103
    .line 104
    move-object p1, v0

    .line 105
    :goto_0
    if-ne p1, v0, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    move-object p1, v2

    .line 109
    :goto_1
    if-ne p1, v0, :cond_4

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_4
    move v4, v5

    .line 113
    move-object v5, v7

    .line 114
    move-object v6, v8

    .line 115
    :goto_2
    move-object v7, v5

    .line 116
    move-object v8, v6

    .line 117
    move v5, v4

    .line 118
    :cond_5
    add-int/2addr v5, v3

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    invoke-static {p1}, Ls1/g;->f0(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lx0/g1;->g:Ljava/lang/Object;

    .line 124
    .line 125
    move-object v8, p1

    .line 126
    check-cast v8, Laf/a;

    .line 127
    .line 128
    iget-object v7, p0, Lx0/g1;->h:Landroid/view/ViewGroup;

    .line 129
    .line 130
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const/4 v5, 0x0

    .line 135
    :goto_3
    if-ge v5, v1, :cond_7

    .line 136
    .line 137
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object v8, p0, Lx0/g1;->g:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v7, p0, Lx0/g1;->b:Landroid/view/ViewGroup;

    .line 144
    .line 145
    iput-object p1, p0, Lx0/g1;->c:Landroid/view/View;

    .line 146
    .line 147
    iput v5, p0, Lx0/g1;->d:I

    .line 148
    .line 149
    iput v1, p0, Lx0/g1;->e:I

    .line 150
    .line 151
    iput v3, p0, Lx0/g1;->f:I

    .line 152
    .line 153
    iput-object p1, v8, Laf/a;->b:Ljava/lang/Object;

    .line 154
    .line 155
    const/4 p1, 0x3

    .line 156
    iput p1, v8, Laf/a;->a:I

    .line 157
    .line 158
    iput-object p0, v8, Laf/a;->d:Lle/a;

    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_7
    return-object v2
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Laf/a;

    .line 2
    .line 3
    check-cast p2, Lle/a;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lx0/g1;->b(Ljava/lang/Object;Lle/a;)Lle/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lx0/g1;

    .line 10
    .line 11
    sget-object p2, Lie/e;->c:Lie/e;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lx0/g1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
