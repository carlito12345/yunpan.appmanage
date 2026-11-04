.class public final synthetic Lha/ua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/d2;


# direct methods
.method public synthetic constructor <init>(Lha/d2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/ua;->a:I

    iput-object p1, p0, Lha/ua;->b:Lha/d2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/ua;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/ua;->b:Lha/d2;

    .line 7
    .line 8
    iget-object p1, p1, Lha/d2;->j:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Landroid/widget/EditText;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p1, p0, Lha/ua;->b:Lha/d2;

    .line 19
    .line 20
    iget-object p1, p1, Lha/d2;->j:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Landroid/widget/EditText;

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object p1, p0, Lha/ua;->b:Lha/d2;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    iget-object p1, p0, Lha/ua;->b:Lha/d2;

    .line 37
    .line 38
    iget-object v0, p1, Lha/d2;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "\u6267\u884c"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ld2/w;

    .line 64
    .line 65
    const/16 v2, 0x15

    .line 66
    .line 67
    invoke-direct {v1, p1, v2, v0}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lmc/c;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Lha/h3;

    .line 91
    .line 92
    const/4 v3, 0x7

    .line 93
    invoke-direct {v2, p1, v3, v0}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
