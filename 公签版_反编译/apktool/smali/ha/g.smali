.class public final Lha/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/i;


# direct methods
.method public synthetic constructor <init>(Lha/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/g;->a:I

    iput-object p1, p0, Lha/g;->b:Lha/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    .line 1
    iget v0, p0, Lha/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/g;->b:Lha/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lg2/c;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, v2}, Lg2/c;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lmc/c;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Lha/h;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-direct {v2, v0, v3}, Lha/h;-><init>(Lha/i;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "adb shell pm grant "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lha/g;->b:Lha/i;

    .line 60
    .line 61
    iget-object v3, v2, Lha/a4;->a:Landroid/app/Activity;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, " android.permission.WRITE_SECURE_SETTINGS"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    iget-object v1, v2, Lha/a4;->b:Landroid/content/Context;

    .line 83
    .line 84
    const-string v2, "clipboard"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroid/content/ClipboardManager;

    .line 91
    .line 92
    if-nez v1, :cond_0

    .line 93
    .line 94
    const-string v0, "\u65e0\u6cd5\u590d\u5236\uff1a\u65e0\u6cd5\u83b7\u53d6\u526a\u5207\u677f\uff0c\u53ef\u80fd\u60a8\u6ca1\u7ed9\u6743\u9650(\u526a\u5207\u677f)"

    .line 95
    .line 96
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const-string v2, "label"

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "\u5df2\u590d\u5236"

    .line 114
    .line 115
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 1

    .line 1
    iget v0, p0, Lha/g;->a:I

    return-void
.end method
