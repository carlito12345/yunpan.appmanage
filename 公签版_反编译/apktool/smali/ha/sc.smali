.class public final synthetic Lha/sc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/q0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/d2;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lha/d2;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lha/sc;->a:I

    iput-object p1, p0, Lha/sc;->b:Lha/d2;

    iput-object p2, p0, Lha/sc;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p3, p0, Lha/sc;->a:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lha/sc;->b:Lha/d2;

    .line 7
    .line 8
    iput-object p2, p3, Lha/d2;->h:Ljava/lang/Object;

    .line 9
    .line 10
    const-string p2, "\u5e94\u7528\u4e00\uff1a"

    .line 11
    .line 12
    invoke-static {p2, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lha/sc;->c:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object p3, p0, Lha/sc;->b:Lha/d2;

    .line 23
    .line 24
    iput-object p2, p3, Lha/d2;->j:Ljava/lang/Object;

    .line 25
    .line 26
    const-string p2, "\u5e94\u7528\u4e8c\uff1a"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lha/sc;->c:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
