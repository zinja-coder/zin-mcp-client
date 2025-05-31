.class Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyEvent"
.end annotation


# static fields
.field static final KEY_DOWN:I = 0x0

.field static final KEY_TYPED:I = 0x2

.field static final KEY_UP:I = 0x1


# instance fields
.field keyChar:C

.field keyCode:I

.field final synthetic this$0:Lcom/badlogic/gdx/input/RemoteInput;

.field timeStamp:J

.field type:I


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/input/RemoteInput;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
