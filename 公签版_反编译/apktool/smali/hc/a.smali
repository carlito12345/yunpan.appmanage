.class public final Lhc/a;
.super Ld/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lhc/a;->d:I

    invoke-direct {p0}, Ld/b;-><init>()V

    iput-object p2, p0, Lhc/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lhc/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhc/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/io/PrintWriter;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, Lhc/a;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/io/PrintStream;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
