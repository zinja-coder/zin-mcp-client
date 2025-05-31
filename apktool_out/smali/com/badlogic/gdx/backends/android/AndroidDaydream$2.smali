.class Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;
.super Ljava/lang/Object;
.source "AndroidDaydream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidDaydream;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidDaydream;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidDaydream$2;->this$0:Lcom/badlogic/gdx/backends/android/AndroidDaydream;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidDaydream;->finish()V

    .line 332
    return-void
.end method
