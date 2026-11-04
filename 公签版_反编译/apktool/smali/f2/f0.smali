.class public final synthetic Lf2/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb2/d;

.field public final synthetic c:Lf2/t;

.field public final synthetic d:Lf2/y;


# direct methods
.method public synthetic constructor <init>(Lb2/d;Lf2/t;Lf2/y;I)V
    .locals 0

    .line 1
    iput p4, p0, Lf2/f0;->a:I

    iput-object p1, p0, Lf2/f0;->b:Lb2/d;

    iput-object p2, p0, Lf2/f0;->c:Lf2/t;

    iput-object p3, p0, Lf2/f0;->d:Lf2/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lf2/f0;->a:I

    .line 2
    .line 3
    check-cast p1, Lf2/i0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf2/f0;->b:Lb2/d;

    .line 9
    .line 10
    iget v1, v0, Lb2/d;->a:I

    .line 11
    .line 12
    iget-object v0, v0, Lb2/d;->b:Lf2/c0;

    .line 13
    .line 14
    iget-object v2, p0, Lf2/f0;->c:Lf2/t;

    .line 15
    .line 16
    iget-object v3, p0, Lf2/f0;->d:Lf2/y;

    .line 17
    .line 18
    invoke-interface {p1, v1, v0, v2, v3}, Lf2/i0;->w(ILf2/c0;Lf2/t;Lf2/y;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lf2/f0;->b:Lb2/d;

    .line 23
    .line 24
    iget v1, v0, Lb2/d;->a:I

    .line 25
    .line 26
    iget-object v0, v0, Lb2/d;->b:Lf2/c0;

    .line 27
    .line 28
    iget-object v2, p0, Lf2/f0;->c:Lf2/t;

    .line 29
    .line 30
    iget-object v3, p0, Lf2/f0;->d:Lf2/y;

    .line 31
    .line 32
    invoke-interface {p1, v1, v0, v2, v3}, Lf2/i0;->s(ILf2/c0;Lf2/t;Lf2/y;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
