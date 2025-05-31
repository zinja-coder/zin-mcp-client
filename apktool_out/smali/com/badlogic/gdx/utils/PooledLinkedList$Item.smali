.class final Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
.super Ljava/lang/Object;
.source "PooledLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/PooledLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item",
            "<TT;>;"
        }
    .end annotation
.end field

.field public payload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    .local p0, "this":Lcom/badlogic/gdx/utils/PooledLinkedList$Item;, "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
