.class Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;
.super Landroidx/recyclerview/widget/o1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/widget/TvRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IRecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;


# direct methods
.method private constructor <init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/o1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;-><init>(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    const-string v0, "RecyclerView Data Changed!!!"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/owen/tvrecyclerview/utils/Loger;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView$IRecyclerViewDataObserver;->this$0:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->w(Lcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
