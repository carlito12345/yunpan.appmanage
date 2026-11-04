.class public final synthetic Lcom/yunpan/appmanage/util/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/s;->a:I

    iput-boolean p2, p0, Lcom/yunpan/appmanage/util/s;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/util/s;->a:I

    .line 2
    .line 3
    check-cast p1, Lx9/w3;

    .line 4
    .line 5
    check-cast p2, Lx9/w3;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/yunpan/appmanage/util/s;->b:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p2, Lx9/w3;->h:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lx9/w3;->h:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    return p1

    .line 32
    :pswitch_0
    iget-boolean v0, p0, Lcom/yunpan/appmanage/util/s;->b:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p2, p2, Lx9/w3;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p2, p2, Lx9/w3;->h:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p1, Lx9/w3;->h:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :goto_1
    return p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
