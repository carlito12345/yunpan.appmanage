.class public final synthetic Lx9/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/i1;

.field public final synthetic c:Lx9/w3;


# direct methods
.method public synthetic constructor <init>(Lx9/i1;Lx9/w3;I)V
    .locals 0

    .line 1
    iput p3, p0, Lx9/g1;->a:I

    iput-object p1, p0, Lx9/g1;->b:Lx9/i1;

    iput-object p2, p0, Lx9/g1;->c:Lx9/w3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lx9/g1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lx9/g1;->b:Lx9/i1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lx9/g1;->c:Lx9/w3;

    .line 12
    .line 13
    const-string v1, "\u8df3\u8fc7"

    .line 14
    .line 15
    iput-object v1, v0, Lx9/w3;->j:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, p1, Lx9/i1;->e:Lh5/m;

    .line 18
    .line 19
    iget-object p1, p1, Lh5/m;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lha/y4;

    .line 22
    .line 23
    iget-object v1, p1, Lha/y4;->i:Lx9/i1;

    .line 24
    .line 25
    iget-object v1, v1, Lx9/i1;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    const v1, 0x7f0b0372

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v1, p1, Lha/y4;->i:Lx9/i1;

    .line 45
    .line 46
    iget-object v3, v1, Lx9/i1;->d:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v1, v1, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/n1;->f(II)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p1, Lha/y4;->i:Lx9/i1;

    .line 61
    .line 62
    iget-object v0, v0, Lx9/i1;->d:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1}, Lha/y4;->d()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lha/y4;->h:Lha/x4;

    .line 74
    .line 75
    invoke-interface {p1}, Lha/x4;->a()V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void

    .line 79
    :pswitch_0
    iget-object p1, p0, Lx9/g1;->b:Lx9/i1;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lx9/g1;->c:Lx9/w3;

    .line 85
    .line 86
    const-string v1, ""

    .line 87
    .line 88
    iput-object v1, v0, Lx9/w3;->j:Ljava/lang/String;

    .line 89
    .line 90
    iget-object p1, p1, Lx9/i1;->e:Lh5/m;

    .line 91
    .line 92
    iget-object p1, p1, Lh5/m;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Lha/y4;

    .line 95
    .line 96
    iget-object v1, p1, Lha/y4;->i:Lx9/i1;

    .line 97
    .line 98
    iget-object v1, v1, Lx9/i1;->d:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v2, 0x1

    .line 105
    if-ne v1, v2, :cond_2

    .line 106
    .line 107
    const v1, 0x7f0b0372

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object v1, p1, Lha/y4;->i:Lx9/i1;

    .line 118
    .line 119
    iget-object v3, v1, Lx9/i1;->d:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    iget-object v1, v1, Landroidx/recyclerview/widget/m1;->a:Landroidx/recyclerview/widget/n1;

    .line 129
    .line 130
    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/n1;->f(II)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p1, Lha/y4;->i:Lx9/i1;

    .line 134
    .line 135
    iget-object v0, v0, Lx9/i1;->d:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_3

    .line 142
    .line 143
    invoke-virtual {p1}, Lha/y4;->d()V

    .line 144
    .line 145
    .line 146
    iget-object p1, p1, Lha/y4;->h:Lha/x4;

    .line 147
    .line 148
    invoke-interface {p1}, Lha/x4;->a()V

    .line 149
    .line 150
    .line 151
    :cond_3
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
