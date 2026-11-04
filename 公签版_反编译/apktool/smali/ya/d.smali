.class public final Lya/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lya/e;


# direct methods
.method public synthetic constructor <init>(Lya/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lya/d;->a:I

    iput-object p1, p0, Lya/d;->b:Lya/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lya/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lya/d;->b:Lya/e;

    .line 7
    .line 8
    :try_start_0
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 9
    .line 10
    invoke-static {v1}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 17
    .line 18
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 19
    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    if-le v3, v1, :cond_0

    .line 23
    .line 24
    iget v1, v0, Lya/e;->G:I

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v3, v3, -0x5

    .line 29
    .line 30
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x5

    .line 34
    .line 35
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 36
    .line 37
    iget v1, v0, Lya/e;->G:I

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    iput v1, v0, Lya/e;->G:I

    .line 42
    .line 43
    const/16 v3, 0xa

    .line 44
    .line 45
    if-le v1, v3, :cond_1

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput v1, v0, Lya/e;->G:I

    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-object v1, v0, Lya/e;->g:Landroid/view/WindowManager;

    .line 51
    .line 52
    iget-object v3, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-interface {v1, v3, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 60
    .line 61
    iget-object v0, v0, Lya/e;->H:Lya/d;

    .line 62
    .line 63
    const v2, 0xea60

    .line 64
    .line 65
    .line 66
    int-to-long v2, v2

    .line 67
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lya/d;->b:Lya/e;

    .line 72
    .line 73
    iget-boolean v1, v0, Lya/e;->n:Z

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    iput-boolean v1, v0, Lya/e;->o:Z

    .line 79
    .line 80
    :cond_2
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lya/d;->b:Lya/e;

    .line 82
    .line 83
    iget v1, v0, Lya/e;->v:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lya/e;->f(I)V

    .line 86
    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    iput-boolean v1, v0, Lya/e;->l:Z

    .line 90
    .line 91
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 92
    .line 93
    iget-object v0, v0, Lya/e;->d:Lz7/s;

    .line 94
    .line 95
    const-string v2, "2"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lya/d;->b:Lya/e;

    .line 106
    .line 107
    const-wide/16 v1, 0x0

    .line 108
    .line 109
    iput-wide v1, v0, Lya/e;->f:J

    .line 110
    .line 111
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 112
    .line 113
    iget-object v0, v0, Lya/e;->d:Lz7/s;

    .line 114
    .line 115
    const-string v2, "0"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .line 123
    .line 124
    :catch_1
    return-void

    .line 125
    :pswitch_3
    iget-object v0, p0, Lya/d;->b:Lya/e;

    .line 126
    .line 127
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 128
    .line 129
    const-string v2, "auto_hide"

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    iget-object v0, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 142
    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    const/16 v1, 0x8

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    const/16 v1, 0x32

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_1
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
