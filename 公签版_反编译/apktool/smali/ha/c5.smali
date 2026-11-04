.class public final synthetic Lha/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lha/e5;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lx9/y0;

.field public final synthetic e:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/e5;IILx9/y0;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/c5;->a:Lha/e5;

    iput p2, p0, Lha/c5;->b:I

    iput p3, p0, Lha/c5;->c:I

    iput-object p4, p0, Lha/c5;->d:Lx9/y0;

    iput-object p5, p0, Lha/c5;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lha/c5;->a:Lha/e5;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lz7/s;

    .line 7
    .line 8
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v1, p1, Lha/e5;->l:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "cursor_style"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p1, Lha/e5;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget v2, p0, Lha/c5;->b:I

    .line 29
    .line 30
    mul-int v1, v1, v2

    .line 31
    .line 32
    iget v2, p0, Lha/c5;->c:I

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "cursor_size"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lha/c5;->d:Lx9/y0;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lx9/x0;

    .line 52
    .line 53
    iget-boolean v2, v2, Lx9/x0;->b:Z

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "isAutoHideCursor"

    .line 60
    .line 61
    invoke-virtual {v0, v3, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x1

    .line 69
    if-le v2, v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lx9/x0;

    .line 76
    .line 77
    iget-boolean v1, v1, Lx9/x0;->b:Z

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "isChannelSwitchToDownUp"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-object v1, p0, Lha/c5;->e:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_1

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "cursor_close_key_code"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v1, p1, Lha/e5;->g:Lha/h8;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Lha/h8;->k(Lz7/s;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 131
    .line 132
    .line 133
    return-void
.end method
