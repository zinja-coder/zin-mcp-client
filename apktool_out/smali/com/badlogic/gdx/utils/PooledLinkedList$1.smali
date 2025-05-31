.class Lcom/badlogic/gdx/utils/PooledLinkedList$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "PooledLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/utils/PooledLinkedList;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/utils/PooledLinkedList$Item",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/utils/PooledLinkedList;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/PooledLinkedList;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList$1;, "Lcom/badlogic/gdx/utils/PooledLinkedList.1;"
    iput-object p1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList$1;->this$0:Lcom/badlogic/gdx/utils/PooledLinkedList;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList$1;, "Lcom/badlogic/gdx/utils/PooledLinkedList.1;"
    new-instance v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList$1;, "Lcom/badlogic/gdx/utils/PooledLinkedList.1;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PooledLinkedList$1;->newObject()Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    move-result-object v0

    return-object v0
.end method
