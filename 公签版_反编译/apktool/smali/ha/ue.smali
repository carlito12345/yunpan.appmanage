.class public final synthetic Lha/ue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ve;


# direct methods
.method public synthetic constructor <init>(Lha/ve;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/ue;->a:I

    iput-object p1, p0, Lha/ue;->b:Lha/ve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lha/ue;->b:Lha/ve;

    .line 2
    .line 3
    iget v0, p0, Lha/ue;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lha/ve;->j:Lx9/n5;

    .line 12
    .line 13
    iget v0, v0, Lx9/n5;->a:I

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p1, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "/"

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p1, Lha/ve;->j:Lx9/n5;

    .line 36
    .line 37
    invoke-virtual {v2}, Lx9/n5;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p1, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v2, v0, v1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lha/ve;->j:Lx9/n5;

    .line 59
    .line 60
    invoke-virtual {v1}, Lx9/n5;->b()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p1, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_0
    new-instance v1, Lha/gf;

    .line 79
    .line 80
    iget-object v2, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 81
    .line 82
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 83
    .line 84
    invoke-direct {v1, v2, p1}, Lha/gf;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lha/gf;->a(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 92
    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "http://127.0.0.1:"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 102
    .line 103
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 104
    .line 105
    iget v2, v1, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v2, "/video/"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v2, p1, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v2, p1, Lha/ve;->k:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 127
    .line 128
    iget-wide v3, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 129
    .line 130
    iput-wide v3, v1, Lcom/yunpan/appmanage/util/k;->G:J

    .line 131
    .line 132
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 133
    .line 134
    iput-object v2, v1, Lcom/yunpan/appmanage/util/k;->H:Ljava/lang/String;

    .line 135
    .line 136
    new-instance v1, Lha/gf;

    .line 137
    .line 138
    iget-object v2, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 139
    .line 140
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 141
    .line 142
    invoke-direct {v1, v2, p1}, Lha/gf;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v0}, Lha/gf;->a(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
