.class public final synthetic Lma/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/u9;


# direct methods
.method public synthetic constructor <init>(Lha/u9;I)V
    .locals 0

    .line 1
    iput p2, p0, Lma/c;->a:I

    iput-object p1, p0, Lma/c;->b:Lha/u9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lma/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lma/c;->b:Lha/u9;

    .line 7
    .line 8
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p1, "\u5b89\u88c5\u6210\u529f"

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lma/c;->b:Lha/u9;

    .line 26
    .line 27
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const-string p1, "\u5b89\u88c5\u6210\u529f"

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 p2, 0x0

    .line 40
    invoke-static {p1, p2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
