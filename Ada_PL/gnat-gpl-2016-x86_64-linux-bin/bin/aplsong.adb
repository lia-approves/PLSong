--This is Ada Lovelace's algorithm to calculate even Bernoulli numbers.
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure APlSong is
   package Int_IO is new Ada.Text_IO.Integer_IO(INTEGER);
   use Int_IO;
   
   function Factorial(N : Integer) return Integer is
      R : Integer := N;
      I : Integer := 1;
   begin
  F_Loop:
      loop
	 if I = N then
	    exit F_Loop;
	 end if;
	 R := R * (N - I);
	 I := I + 1;
      end loop F_Loop;
      return R;
   end Factorial;

   -- Returns the (2N)th Bernoulli number.
   function Bernoulli2N(N : Integer) return Float is
      R : Float := Float(2*N-1)/Float(2*(2*N+1));
      I : Integer := 1;
      X : Integer := 1;
      Y : Integer := 2*N;
   begin
  B_Loop:
      loop        
	 if I = N then
	    exit B_Loop;
	 end if;
	 X := 1;
	 Y := 2*N;
     I_Loop:
	 loop
	    if X = 2*I-1 then
	       exit I_Loop;
	    end if;
	    Y := Y*(2*N - X);
	    X := X + 1;
	 end loop I_Loop;
	 R := R - Bernoulli2N(I)*Float(Y)/Float(Factorial(2*I));
	 I := I + 1;	 
      end loop B_Loop;
      return R;
   end Bernoulli2N;
   
   procedure Lovelace(N: in Integer) is
   begin
      Put("Ada calculates ");
      Put(Bernoulli2N(N));
      Put(" as the ");
      Put(2*N);
      Put("th Bernoulli number.");
   end Lovelace;
   
begin -- procedure main
   Lovelace(6);
   New_Line;
end APlSong;
