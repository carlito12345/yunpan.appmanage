.class public final synthetic Lha/zd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ge;


# direct methods
.method public synthetic constructor <init>(Lha/ge;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/zd;->a:I

    iput-object p1, p0, Lha/zd;->b:Lha/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 1
    iget v0, p0, Lha/zd;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/zd;->b:Lha/ge;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lha/ge;->c(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lha/zd;->b:Lha/ge;

    .line 13
    .line 14
    iput p1, v0, Lha/ge;->E:I

    .line 15
    .line 16
    iget-object v1, v0, Lha/ge;->n:Landroid/widget/TextView;

    .line 17
    .line 18
    iget-object v0, v0, Lha/ge;->D:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lg7/d;->n(Ljava/lang/Object;)Landroid/speech/tts/Voice;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lg7/d;->o(Landroid/speech/tts/Voice;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lha/zd;->b:Lha/ge;

    .line 37
    .line 38
    iput p1, v0, Lha/ge;->G:I

    .line 39
    .line 40
    iget-object v1, v0, Lha/ge;->q:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object v0, v0, Lha/ge;->F:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/util/Locale;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
