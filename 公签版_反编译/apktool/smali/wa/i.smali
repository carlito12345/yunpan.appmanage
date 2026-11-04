.class public final synthetic Lwa/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic a:Lwa/s;

.field public final synthetic b:Lz7/s;


# direct methods
.method public synthetic constructor <init>(Lwa/s;Lz7/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa/i;->a:Lwa/s;

    iput-object p2, p0, Lwa/i;->b:Lz7/s;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwa/i;->b:Lz7/s;

    .line 2
    .line 3
    iget-object v1, p0, Lwa/i;->a:Lwa/s;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, v1, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 8
    .line 9
    new-instance v2, Lha/fe;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, v3, v1}, Lha/fe;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v1, v0}, Lwa/s;->s(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string p1, "TTS\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25\uff0c\u4e0d\u53ef\u7528"

    .line 26
    .line 27
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object p1, v1, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 38
    iput-object p1, v1, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 39
    .line 40
    :catch_1
    :goto_0
    return-void
.end method
