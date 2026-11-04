.class public final synthetic Lha/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/c;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/i0;


# direct methods
.method public synthetic constructor <init>(Lha/i0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/g0;->a:I

    iput-object p1, p0, Lha/g0;->b:Lha/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/g0;->b:Lha/i0;

    .line 2
    .line 3
    iget-object v0, v0, Lha/i0;->y:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget p1, p0, Lha/g0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/g0;->b:Lha/i0;

    .line 7
    .line 8
    iget-object p2, p1, Lha/i0;->n:Lx9/i4;

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Lx9/i4;->G(I)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p1, Lha/i0;->q:Landroid/widget/EditText;

    .line 14
    .line 15
    iget-object p1, p1, Lha/i0;->n:Lx9/i4;

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lx9/x0;

    .line 22
    .line 23
    iget-object p1, p1, Lx9/x0;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    iget-object p1, p0, Lha/g0;->b:Lha/i0;

    .line 30
    .line 31
    iget-object p1, p1, Lha/i0;->l:Lx9/i4;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lx9/i4;->G(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
