.class Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchEvent"
.end annotation


# static fields
.field static final TOUCH_DOWN:I = 0x0

.field static final TOUCH_DRAGGED:I = 0x2

.field static final TOUCH_UP:I = 0x1


# instance fields
.field pointer:I

.field final synthetic this$0:Lcom/badlogic/gdx/input/RemoteInput;

.field timeStamp:J

.field type:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/input/RemoteInput;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
