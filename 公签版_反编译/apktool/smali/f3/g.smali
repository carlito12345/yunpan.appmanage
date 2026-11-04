.class public final synthetic Lf3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt7/d;
.implements Lv1/t;


# instance fields
.field public final synthetic a:Lf3/j;


# direct methods
.method public synthetic constructor <init>(Lf3/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf3/g;->a:Lf3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lf3/s;

    iget-object v0, p0, Lf3/g;->a:Lf3/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public b(JLu1/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf3/g;->a:Lf3/j;

    .line 2
    .line 3
    iget-object v0, v0, Lf3/j;->I:[Ll2/j0;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, v0}, Ll2/b;->c(JLu1/q;[Ll2/j0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
