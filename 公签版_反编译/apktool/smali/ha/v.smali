.class public final Lha/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/v;->a:I

    iput-object p2, p0, Lha/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final h(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget p1, p0, Lha/v;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/v;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityFloatButtonSet;->C:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, Lha/v;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lha/h1;

    .line 19
    .line 20
    iget-object p1, p1, Lha/h1;->h:Lea/c;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Lea/c;->e(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p1, p0, Lha/v;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lha/y;

    .line 29
    .line 30
    iget-object p3, p1, Lha/y;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 31
    .line 32
    iget v0, p3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string v0, "\u5c4f\u5e55\u4eae\u5ea6\u4e0a\u5347\u5230 "

    .line 37
    .line 38
    const-string v1, " \u4ee5\u4e0a\u7684\u65f6\u5019"

    .line 39
    .line 40
    invoke-static {v0, p2, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "\u5c4f\u5e55\u4eae\u5ea6\u4e0b\u964d\u5230 "

    .line 48
    .line 49
    const-string v1, " \u4ee5\u4e0b\u7684\u65f6\u5019"

    .line 50
    .line 51
    invoke-static {v0, p2, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 56
    .line 57
    :goto_0
    iget-object p2, p1, Lha/y;->j:Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object p1, p1, Lha/y;->m:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    iget-object p1, p0, Lha/v;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lha/w;

    .line 70
    .line 71
    iget-object p3, p1, Lha/w;->n:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 74
    .line 75
    iget v0, p3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    const-string v0, "\u5149\u7167\u4eae\u5ea6\u4e0a\u5347\u5230 "

    .line 80
    .line 81
    const-string v1, " \u4ee5\u4e0a\u7684\u65f6\u5019"

    .line 82
    .line 83
    invoke-static {v0, p2, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iput-object p2, p3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const-string v0, "\u5149\u7167\u4eae\u5ea6\u4e0b\u964d\u5230 "

    .line 91
    .line 92
    const-string v1, " \u4ee5\u4e0b\u7684\u65f6\u5019"

    .line 93
    .line 94
    invoke-static {v0, p2, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iput-object p2, p3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 99
    .line 100
    :goto_1
    iget-object p2, p1, Lha/w;->h:Landroid/widget/TextView;

    .line 101
    .line 102
    iget-object p1, p1, Lha/w;->n:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/v;->a:I

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/v;->a:I

    return-void
.end method
