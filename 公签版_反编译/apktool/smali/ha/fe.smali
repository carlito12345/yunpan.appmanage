.class public final Lha/fe;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/fe;->a:I

    iput-object p2, p0, Lha/fe;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/fe;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/fe;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lwa/s;

    .line 9
    .line 10
    invoke-virtual {p1}, Lwa/s;->q()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, Lha/fe;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lha/ge;

    .line 17
    .line 18
    invoke-virtual {p1}, Lha/ge;->d()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lha/fe;->a:I

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object p1, p0, Lha/fe;->b:Ljava/lang/Object;

    check-cast p1, Lwa/s;

    invoke-virtual {p1}, Lwa/s;->q()V

    return-void

    .line 2
    :pswitch_0
    iget-object p1, p0, Lha/fe;->b:Ljava/lang/Object;

    check-cast p1, Lha/ge;

    invoke-virtual {p1}, Lha/ge;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Ljava/lang/String;I)V
    .locals 0

    iget p1, p0, Lha/fe;->a:I

    packed-switch p1, :pswitch_data_0

    .line 3
    iget-object p1, p0, Lha/fe;->b:Ljava/lang/Object;

    check-cast p1, Lwa/s;

    invoke-virtual {p1}, Lwa/s;->q()V

    return-void

    .line 4
    :pswitch_0
    iget-object p1, p0, Lha/fe;->b:Ljava/lang/Object;

    check-cast p1, Lha/ge;

    invoke-virtual {p1}, Lha/ge;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/fe;->a:I

    return-void
.end method

.method public final onStop(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget p1, p0, Lha/fe;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/fe;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lwa/s;

    .line 9
    .line 10
    invoke-virtual {p1}, Lwa/s;->q()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, Lha/fe;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lha/ge;

    .line 17
    .line 18
    invoke-virtual {p1}, Lha/ge;->d()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
